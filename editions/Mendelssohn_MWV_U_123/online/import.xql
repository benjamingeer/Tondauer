(: Extracts annotations from an MEI document for import into Knora. :)

xquery version "3.1";
declare namespace mei = "http://www.music-encoding.org/ns/mei";
declare namespace saxon="http://saxon.sf.net/";
declare namespace array="http://www.w3.org/2005/xpath-functions/array";
declare variable $uri external;
declare variable $shortcode external;
declare variable $ontology external;
declare variable $markup external;
declare variable $use-markup := xs:boolean($markup);
declare option saxon:output "indent=yes";

(: Recursively traverses nodes. :)
declare function local:traverse($nodes as node()*) as item()* {
  for $node in $nodes
  return
    typeswitch($node)
      case text() return $node
      case element(mei:annot) return local:annot($node)
      case element(mei:source) return local:source($node)
      case element(mei:p) return local:p($node)
      case element(mei:ptr) return local:ptr($node)
      case element(mei:rend) return local:rend($node)
      default return local:pass-through($node)
};

(: Copies nodes unchanged. :)
declare function local:pass-through($node as node()*) as item()* {
  element {name($node)} {($node/@*, local:traverse($node/node()))}
};

(: Parses an attribute value containing a space-delimited list of element ID references. :)
declare function local:parse-ids($attr as attribute()*) as xs:string* {
  for $id-ref in $attr/tokenize(., "\s+") return substring-after($id-ref, "#")
};

(: Transforms <ptr> elements. :)
declare function local:ptr($node as node()*) as item()* {
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
  let $id := $node/@xml:id
  return
    <resource label="{$id}"
      restype="Source"
      unique_id="{$id}"
      permissions="res-default">
      <text-prop name="hasName" permissions="prop-default">{local:traverse($node/mei:name/node())}</text-prop>
    </resource>
};

(: Transforms <annot> elements. :)
declare function local:annot($node as element(mei:annot)) as element(resource) {
  let $id := $node/@xml:id

  (: The text of the annotation. :)
  let $annotation-text := local:traverse($node/node())

  (: The measure number that the annotation occurs in. :)
  let $measure-num := string($node/(ancestor::mei:measure[@n][1]/@n))

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
    <text-prop name="hasText" permissions="prop-default">{
      if ($use-markup) then
        <text>{$annotation-text}</text>
      else
	$annotation-text
    }</text-prop>
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

let $document := doc($uri) return

<knora shortcode="{$shortcode}" ontology="{$ontology}">
  <permissions id="res-default">
    <allow group="UnknownUser">V</allow>
    <allow group="KnownUser">V</allow>
    <allow group="Creator">CR</allow>
    <allow group="ProjectAdmin">CR</allow>
  </permissions>
  <permissions id="prop-default">
    <allow group="UnknownUser">V</allow>
    <allow group="KnownUser">V</allow>
    <allow group="Creator">CR</allow>
    <allow group="ProjectAdmin">CR</allow>
  </permissions>
  {
    for $input-source in $document//mei:source return local:source($input-source)
  }
  {
    for $input-annot in $document//mei:annot return local:annot($input-annot)
  }
</knora>
