(: Extracts annotations from an MEI document for import into Knora. :)

xquery version "3.1";
declare namespace mei = "http://www.music-encoding.org/ns/mei";
declare namespace saxon="http://saxon.sf.net/";
declare variable $uri external;
declare variable $shortcode external;
declare variable $ontology external;
declare option saxon:output "indent=yes";

(: Recursively traverses nodes. :)
declare function local:dispatch($nodes as node()*) as item()* {
  for $node in $nodes
  return
    typeswitch($node)
      case text() return $node
      case element(mei:annot) return local:annot($node)
      case element(mei:p) return local:p($node)
      case element(mei:rend) return local:rend($node)
      default return local:passthru($node)
};

(: Copies nodes unchanged. :)
declare function local:passthru($node as node()*) as item()* {
  element {name($node)} {($node/@*, local:dispatch($node/node()))}
};

(: Transforms <annot> elements. :)
declare function local:annot($node as element(mei:annot)) as element() {
  let $id := $node/@xml:id
  let $targets := $node/@plist/tokenize(., '\s+')
  return
  <resource label="{$id}"
  restype="Annot"
  unique_id="{$id}"
  permissions="res-default">
    <text-prop name="hasText">{local:dispatch($node/node())}</text-prop>
    {
      for $target in $targets
      return
      <text-prop name="hasTarget">{substring-after($target, "#")}</text-prop>
    }
  </resource>
};

(: Transforms <p> elements. :)
declare function local:p($node as element(mei:p)) as element() {
<p>{local:dispatch($node/node())}</p>
};

(: Transforms <rend> elements. :)
declare function local:rend($node as element(mei:rend)) as element() {
  let $fontweight := $node/@fontweight
  return
    if ($fontweight = 'bold') then
    <strong>{local:dispatch($node/node())}</strong>
  else
    local:dispatch($node/node())
};

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
    let $document := doc($uri)
    for $inputAnnot in $document//mei:annot return local:annot($inputAnnot)
  }
</knora>
