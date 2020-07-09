(: Extracts annotations from an MEI document for import into Knora. :)

xquery version "3.1";
declare namespace mei = "http://www.music-encoding.org/ns/mei";
declare variable $uri external;

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
  let $plist := $node/@plist
  return
  <annot id="{$id}" plist="{$plist}">{local:dispatch($node/node())}</annot>
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

<annotations>
  {
    let $document := doc($uri)
    for $inputAnnot in $document//mei:annot return local:annot($inputAnnot)
  }
</annotations>
