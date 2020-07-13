(:

Extracts data from an MEI document for import into Knora using
knora-py.

- If the parameter 'markup' is 'true', text markup will be converted
  to Knora's standard mapping; otherwise it will be removed. If markup
  is activated, a <ptr> referring to a <source> will be replaced with
  a resource reference.

- Each <source> must have a <name>, which can contain markup.

- Facsimiles must be in a directory ./facsimiles, in which there's a
  subdirectory for each facsimile. The name of each subdirectory is
  the ID of the facsimile in the MEI document.

- Each <facsimile> must contain a <surface> for each page, specifying
  its page number with @n.

- Each <surface> must contain a <graphic>, whose @target is the
  filename in the facsimile's directory.

- Each <zone> must contain a <figDesc>, which can contain markup.

- Each <lem> should specify its sources in @source, using the IDs of
  <source> elements.

- Each <annot> must have a <measure> as its parent element. Probably
  we will require annotations to be collected at the end of each
  measure for automated update.

- Each <annot> must use @n to specify its 1-based index among the
  annotations in the same measure.

- The IDs in the @plist of an <annot> (its targets) should be <app> or
  <choice> elements.

- An <annot> should have a @facs specifying the zones it refers to.

:)

xquery version "3.1";
declare namespace mei = "http://www.music-encoding.org/ns/mei";
declare namespace saxon = "http://saxon.sf.net/";
declare namespace array = "http://www.w3.org/2005/xpath-functions/array";

(: The file path of the MEI document. :)
declare variable $mei-file external;

(: The Knora project shortcode. :)
declare variable $shortcode external;

(: The name of the Knora ontology. :)
declare variable $ontology external;

(: "true" if text markup should be used, "false" otherwise. :)
declare variable $markup external;

declare variable $use-markup := xs:boolean($markup);
declare option saxon:output "indent=yes";

(: Recursively traverses nodes. :)
declare function local:traverse($nodes as node()*) as item()* {
  for $node in $nodes
  return
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
  for $id-ref in $attr/tokenize(., "\s+") return substring-after($id-ref, "#")
};

(: Transforms <ptr> elements. :)
declare function local:ptr($node as element(mei:ptr)) as item()* {
  let $target-id := local:parse-ids($node/@target)
  let $target := $node/id($target-id)
  return
    typeswitch($target)
      case element(mei:source) return
        if ($use-markup) then
          <strong><a class="salsah-link" href="#{$target-id}">{local:traverse($target/mei:name/node())}</a></strong>
	else
          local:traverse($target/mei:name/node())

      default return local:pass-through($node)  
};

(: Transforms <p> elements. :)
declare function local:p($node as element(mei:p)) as item()* {
  if ($use-markup) then
    <p>{local:traverse($node/node())}</p>
  else
    local:traverse($node/node())
};

(: Transforms <rend> elements. :)
declare function local:rend($node as element(mei:rend)) as item()* {
  if ($use-markup) then
    if ($node/@fontstyle = "italic") then
      <em>{local:traverse($node/node())}</em>
    else if ($node/@valign = "bottom") then
      <sub>{local:traverse($node/node())}</sub>
    else
      local:traverse($node/node())
  else
    local:traverse($node/node())
};

(: Transforms <source> elements. :)
declare function local:source($node as element(mei:source)) as element(resource) {
  let $id := string($node/@xml:id)
  return
    <resource label="{$id}"
      restype="Source"
      unique_id="{$id}"
      permissions="res-default">
      <text-prop name="hasName" permissions="prop-default">{local:traverse($node/mei:name/node())}</text-prop>
    </resource>
};

(: Transforms <facsimile> elements. :)
declare function local:facsimile($node as element(mei:facsimile)) as element(resource) {
  let $id := string($node/@xml:id)
  let $source-id := local:parse-ids($node/@decls)
  let $surfaces := $node/mei:surface
  return
    <resource label="{$id}"
      restype="Facsimile"
      unique_id="{$id}"
      permissions="res-default">
      <resptr-prop name="representsSource">
        <resptr permissions="prop-default">{$source-id}</resptr>
      </resptr-prop>
    </resource>
};

(: Transforms <surface> elements. :)
declare function local:surface($node as element(mei:surface)) as element(resource) {
  let $id := string($node/@xml:id)
  let $facsimile-id := string($node/parent::mei:facsimile/@xml:id)
  let $page-num := string($node/@n)
  let $image := string($node/mei:graphic/@target)
  return
  <resource label="{$id}"
    restype="FacsimilePage"
    unique_id="{$id}"
    permissions="res-default">
    <image>facsimiles/{$facsimile-id}/{$image}</image>
    <resptr-prop name="isPartOf">
      <resptr permissions="prop-default">{$facsimile-id}</resptr>
    </resptr-prop>
    <integer-prop name="hasPageNumber" permissions="prop-default">{$page-num}</integer-prop>
  </resource>  
};

(: Transforms <zone> elements. :)
declare function local:zone($node as element(mei:zone)) as element(resource) {
  let $id := string($node/@xml:id)
  let $surface-id := string($node/parent::mei:surface/@xml:id)
  let $description := local:traverse($node/mei:figDesc/node())
  (: TODO: load the coordinates from another file. :) 
  return
  <resource label="{$id}"
    restype="Region"
    unique_id="{$id}"
    permissions="res-default">
    <color-prop>
      <color>#ff0000</color>
    </color-prop>
    <resptr-prop name="isRegionOf">
      <resptr permissions="prop-default">{$surface-id}</resptr>
    </resptr-prop>
    <geometry-prop name="hasGeometry">
      <geometry permissions="prop-default">{{"points":[{{"x":0.08098591549295775,"y":0.16741071428571427}},{{"x":0.7394366197183099,"y":0.7299107142857143}}],"type":"rectangle"}}</geometry>
    </geometry-prop>
    <text-prop name="hasComment"><text permissions="prop-default" encoding="utf8">{
      if ($use-markup) then
        <text>{$description}</text>
      else
	$description
    }</text></text-prop>
  </resource>  
};

(: Transforms <annot> elements. :)
declare function local:annot($node as element(mei:annot)) as element(resource) {
  let $id := string($node/@xml:id)

  (: The text of the annotation. :)
  let $annotation-text := local:traverse($node/node())

  (: The measure number that the annotation occurs in. :)
  let $measure-num := string($node/(parent::mei:measure/@n))

  (: The index of the annotation in the measure. :)
  let $annot-index := string($node/@n)

  (: The IDs of the elements that are targets of the annotation. :)
  let $target-ids := local:parse-ids($node/@plist)

  (: The IDs of sources mentioned in <lem> elements that are contained within targets of the annotation. :)
  let $source-ids := distinct-values(array:flatten(for $target in $node/id($target-ids) return
    local:parse-ids($target/mei:lem/@source)))

  (: The IDs of zones that the annotation refers to. :)
  let $zone-ids := local:parse-ids($node/@facs)
  
  return
  <resource label="{$id}"
  restype="Annotation"
  unique_id="{$id}"
  permissions="res-default">
    <text-prop name="hasText"><text permissions="prop-default" encoding="utf8">{
      if ($use-markup) then
        <text>{$annotation-text}</text>
      else
	$annotation-text
    }</text></text-prop>
    <integer-prop name="inMeasure" permissions="prop-default">{$measure-num}</integer-prop>
    <integer-prop name="indexInMeasure" permissions="prop-default">{$annot-index}</integer-prop>
    {
      for $target-id in $target-ids return
      <text-prop name="hasTarget" permissions="prop-default">{$target-id}</text-prop>
    }
    {
      for $source-id in $source-ids return
      <resptr-prop name="hasPreferredSource">
        <resptr permissions="prop-default">{$source-id}</resptr>
      </resptr-prop>
    }
    {
      for $zone-id in $zone-ids return
      <resptr-prop name="refersToRegion">
        <resptr permissions="prop-default">{$zone-id}</resptr>
      </resptr-prop>
    }
  </resource>
};

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
    for $source in $mei-document//mei:source return local:source($source)
  }
  {
    for $facsimile in $mei-document//mei:facsimile return (
      local:facsimile($facsimile),
      for $surface in $facsimile/mei:surface return (
        local:surface($surface),
        for $zone in $surface/mei:zone return local:zone($zone)
      )
    )
  }
  {
    for $annot in $mei-document//mei:annot return local:annot($annot)
  }
</knora>
