(: Extracts data from an MEI document for import into Knora using knora-py. :)

xquery version "3.1";

declare namespace mei = "http://www.music-encoding.org/ns/mei";
declare namespace saxon = "http://saxon.sf.net/";
declare namespace err = "http://www.w3.org/2005/xqt-errors";
declare namespace tondauer-err = "http://tondauer.art/errors";

import module namespace tesselle = "http://tondauer.art/tesselle" at "tesselle.xqm";

(: The file path of the MEI document. :)
declare variable $mei-file external;

(: The Knora project shortcode. :)
declare variable $shortcode external;

(: The name of the Knora ontology. :)
declare variable $ontology external;

(: The external provider to load regions from. :)
declare variable $region-provider external;

(: "true" if text markup should be used, "false" otherwise. :)
declare variable $markup external;
declare variable $use-markup := xs:boolean($markup);

declare option saxon:output "indent=yes";

(: Loads a surface's regions from an external provider. :)
declare function local:load-regions($surface-id as xs:string) as element(regions)? {
  if ($region-provider = "tesselle") then
    tesselle:load-regions($surface-id)
  else
    error(xs:QName("tondauer-err:InvalidRegionType"), "Invalid region provider", $region-provider)
};

(: Recursively traverses nodes. :)
declare function local:traverse($nodes as node()*) as item()* {
  for $node in $nodes return
    typeswitch($node)
      case text() return $node
      case element(mei:p) return local:p($node)
      case element(mei:ptr) return local:ptr($node)
      case element(mei:rend) return local:rend($node)
      default return local:pass-through($node)
};

(: Copies nodes unchanged. :)
declare function local:pass-through($node as node()*) as item()* {
  element {name($node)} {($node/@*, local:traverse($node/node()))}
};

(:
  Parses an optional attribute value containing a space-delimited list of
  element ID references.
:)
declare function local:parse-ids($attr as attribute()?) as xs:string* {
  for $id-ref in tokenize($attr, "\s+") return substring-after($id-ref, "#")
};

(: Transforms <ptr> elements. :)
declare function local:ptr($ptr as element(mei:ptr)) as item()* {
  let $target-id := local:parse-ids($ptr/@target)
  let $target := $ptr/id($target-id)
  return
    typeswitch($target)
      case element(mei:source) return
        if ($use-markup) then
          <strong><a class="salsah-link" href="#{$target-id}">{local:traverse($target/mei:bibl/mei:name/node())}</a></strong>
        else
          local:traverse($target/mei:bibl/mei:name/node())

      default return error(xs:QName("tondauer-err:InvalidPtr"), "Invalid ptr", $ptr)
};

(: Transforms <p> elements. :)
declare function local:p($p as element(mei:p)) as item()* {
  if ($use-markup) then
    <p>{local:traverse($p/node())}</p>
  else
    local:traverse($p/node())
};

(: Transforms <rend> elements. :)
declare function local:rend($rend as element(mei:rend)) as item()* {
  if ($use-markup) then
    if ($rend/@fontstyle = "italic") then
      <em>{local:traverse($rend/node())}</em>
    else if ($rend/@valign = "bottom") then
      <sub>{local:traverse($rend/node())}</sub>
    else
      local:traverse($rend/node())
  else
    local:traverse($rend/node())
};

(: Wraps text in a <text> element if markup is enabled. :)
declare function local:text-prop($content as item()*) as item()* {
  if ($use-markup) then
    <text>{$content}</text>
  else
    $content
};

(: Transforms <source> elements. :)
declare function local:source($source as element(mei:source)) as element(resource) {
  let $source-id:= string($source/@xml:id)
  let $source-name := local:traverse($source/mei:bibl/mei:name/node())
  return
    <resource label="{$source-id}"
      restype="Source"
      unique_id="{$source-id}"
      permissions="res-default">
      <text-prop name="hasName"><text permissions="prop-default" encoding="utf8">{local:text-prop($source-name)}</text></text-prop>
    </resource>
};

(: Transforms <facsimile> elements. :)
declare function local:facsimile($facsimile as element(mei:facsimile)) as element(resource)+ {
  let $facsimile-id:= string($facsimile/@xml:id)
  let $source-id := local:parse-ids($facsimile/@decls)
  return
    (<resource label="{$facsimile-id}"
      restype="Facsimile"
      unique_id="{$facsimile-id}"
      permissions="res-default">
      <resptr-prop name="representsSource">
        <resptr permissions="prop-default">{$source-id}</resptr>
      </resptr-prop>
    </resource>,
    for $surface in $facsimile/mei:surface return local:surface($surface))
};

(: Transforms <surface> elements. :)
declare function local:surface($surface as element(mei:surface)) as element(resource)+ {
  let $surface-id:= string($surface/@xml:id)
  let $facsimile-id := string($surface/parent::mei:facsimile/@xml:id)
  let $page-num := string($surface/@n)
  let $image := string($surface/mei:graphic/@target)

  (: Load externally defined regions. :)
  let $regions := local:load-regions($surface-id)

  return
    (<resource label="{$surface-id}"
      restype="FacsimilePage"
      unique_id="{$surface-id}"
      permissions="res-default">
      <image>facsimiles/{$facsimile-id}/{$image}</image>
      <resptr-prop name="isPartOf">
        <resptr permissions="prop-default">{$facsimile-id}</resptr>
      </resptr-prop>
      <integer-prop name="hasPageNumber"><integer permissions="prop-default">{$page-num}</integer></integer-prop>
    </resource>,
    for $zone in $surface/mei:zone return local:zone($zone, $regions))
};

(: Transforms <zone> elements. :)
declare function local:zone($zone as element(mei:zone), $regions as element(regions)?) as element(resource) {
  let $zone-id:= string($zone/@xml:id)
  let $surface-id := string($zone/parent::mei:surface/@xml:id)
  let $description := local:traverse($zone/mei:figDesc/node())
  return
    <resource label="{$zone-id}"
      restype="Region"
      unique_id="{$zone-id}"
      permissions="res-default">
      <color-prop name="hasColor">
        <color permissions="prop-default">#ff0000</color>
      </color-prop>
      <resptr-prop name="isRegionOf">
        <resptr permissions="prop-default">{$surface-id}</resptr>
      </resptr-prop>
      <geometry-prop name="hasGeometry">
        <geometry permissions="prop-default">{$regions/region[@target = $zone-id]/node()}</geometry>
      </geometry-prop>
      <text-prop name="hasComment"><text permissions="prop-default" encoding="utf8">{local:text-prop($description)}</text></text-prop>
    </resource>  
};

(: Transforms <annot> elements. :)
declare function local:annot($annot as element(mei:annot)) as element(resource) {
  let $annot-id:= string($annot/@xml:id)

  (: The text of the annotation. :)
  let $annotation-text := local:traverse($annot/node())

  (: The measure number that the annotation occurs in. :)
  let $measure-num := string($annot/(parent::mei:measure/@n))

  (: The index of the annotation in the measure. :)
  let $annot-index := string($annot/@n)

  (: The IDs of the elements that are targets of the annotation. :)
  let $target-ids := local:parse-ids($annot/@plist)

  (: The IDs of sources mentioned in <lem> elements that are contained within targets of the annotation. :)
  let $source-ids := distinct-values(
    for $target in $annot/id($target-ids) return local:parse-ids($target/mei:lem/@source)
  )

  (: The IDs of zones that the annotation refers to. :)
  let $zone-ids := local:parse-ids($annot/@facs)
  
  return
    <resource label="{$annot-id}"
    restype="Annotation"
    unique_id="{$annot-id}"
    permissions="res-default">
      <text-prop name="hasComment"><text permissions="prop-default" encoding="utf8">{local:text-prop($annotation-text)}</text></text-prop>
      <integer-prop name="inMeasure"><integer permissions="prop-default">{$measure-num}</integer></integer-prop>
      <integer-prop name="indexInMeasure"><integer permissions="prop-default">{$annot-index}</integer></integer-prop>
      {
        (
          for $target-id in $target-ids return
            <text-prop name="hasTarget"><text permissions="prop-default">{$target-id}</text></text-prop>,
          for $source-id in $source-ids return
            <resptr-prop name="hasPreferredSource">
              <resptr permissions="prop-default">{$source-id}</resptr>
            </resptr-prop>,
          for $zone-id in $zone-ids return
            <resptr-prop name="refersToRegion">
              <resptr permissions="prop-default">{$zone-id}</resptr>
            </resptr-prop>
        )
      }
    </resource>
};

(: Generate the output document. :)

let $mei-document := doc($mei-file) return

<knora shortcode="{$shortcode}" ontology="{$ontology}">
  <permissions id="res-default">
    <allow group="UnknownUser">V</allow>
    <allow group="KnownUser">V</allow>
    <allow group="ProjectMember">M</allow>
    <allow group="Creator">CR</allow>
    <allow group="ProjectAdmin">CR</allow>
  </permissions>
  <permissions id="prop-default">
    <allow group="UnknownUser">V</allow>
    <allow group="KnownUser">V</allow>
    <allow group="ProjectMember">M</allow>
    <allow group="Creator">CR</allow>
    <allow group="ProjectAdmin">CR</allow>
  </permissions>
  {
    (
      for $source in $mei-document//mei:source return local:source($source),
      for $facsimile in $mei-document//mei:facsimile return local:facsimile($facsimile),
      for $annot in $mei-document//mei:annot return local:annot($annot)
    )
  }
</knora>
