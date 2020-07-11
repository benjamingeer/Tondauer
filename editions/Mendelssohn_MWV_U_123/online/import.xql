(: Extracts annotations from an MEI document for import into Knora. :)

xquery version "3.1";
declare namespace mei = "http://www.music-encoding.org/ns/mei";
declare namespace saxon="http://saxon.sf.net/";
declare namespace array="http://www.w3.org/2005/xpath-functions/array";
declare variable $uri external;
declare variable $shortcode external;
declare variable $ontology external;
declare option saxon:output "indent=yes";

(: Recursively traverses nodes. :)
declare function local:traverse($nodes as node()*) as item()* {
  for $node in $nodes
  return
    typeswitch($node)
      case text() return $node
      case element(mei:annot) return local:annot($node)
      case element(mei:p) return local:p($node)
      case element(mei:rend) return local:rend($node)
      case element(mei:ptr) return local:ptr($node)
      default return local:passthru($node)
};

(: Copies nodes unchanged. :)
declare function local:passthru($node as node()*) as item()* {
  element {name($node)} {($node/@*, local:traverse($node/node()))}
};

(: Transforms <ptr> elements. :)
declare function local:ptr($node as node()*) as item()* {
  let $target := $node/id(local:parseIDs($node/@target))
  return
    typeswitch($target)
      case element(mei:source)
        (: Just return the name of the source. TODO: return a resource reference. :)
        return <strong>{string($target/mei:name)}</strong>

      default return local:passthru($node)  
};

(: Parses an attribute value containing a space-delimited list of element ID references. :)
declare function local:parseIDs($attr as attribute()*) as xs:string* {
  for $idRef in $attr/tokenize(., '\s+') return substring-after($idRef, "#")
};

(: Transforms <annot> elements. :)
declare function local:annot($node as element(mei:annot)) as element() {
  let $id := $node/@xml:id

  (: The text of the annotation. :)
  let $annotationText := local:traverse($node/node())

  (: The measure number that the annotation occurs in. :)
  let $measureNum := data($node/(ancestor::mei:measure[@n][1]/@n))

  (: The IDs of the elements that are targets of the annotation. :)
  let $targetIDs := local:parseIDs($node/@plist)

  (: The IDs of sources mentioned in <lem> elements that are contained within targets of the annotation. :)
  let $sourceIDs := distinct-values(array:flatten(for $target in $node/id($targetIDs) return
    local:parseIDs($target/mei:lem/@source)))

  (: The IDs of zones that the annotation refers to. :)
  let $zoneIDs := local:parseIDs($node/@facs)
  
  return
  <resource label="{$id}"
  restype="Annotation"
  unique_id="{$id}"
  permissions="res-default">
    <text-prop name="hasText" permissions="prop-default"><text>{$annotationText}</text></text-prop>
    <integer-prop name="inMeasure" permissions="prop-default">{$measureNum}</integer-prop>
    {
      for $targetID in $targetIDs return
      <text-prop name="hasTarget" permissions="prop-default">{$targetID}</text-prop>
    }
    {
      for $sourceID in $sourceIDs return
      <text-prop name="hasPreferredSource" permissions="prop-default">{$sourceID}</text-prop>
    }
    {
      for $zoneID in $zoneIDs return
      <resptr-prop name="refersToRegion">
        <resptr permissions="prop-default">{$zoneID}</resptr>
      </resptr-prop>
    }
  </resource>
};

(: Transforms <p> elements. :)
declare function local:p($node as element(mei:p)) as element() {
<p>{local:traverse($node/node())}</p>
};

(: Transforms <rend> elements. :)
declare function local:rend($node as element(mei:rend)) as element() {
  let $fontweight := $node/@fontweight
  return
    if ($fontweight = 'bold') then
    <strong>{local:traverse($node/node())}</strong>
  else
    local:traverse($node/node())
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
