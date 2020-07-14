module namespace tesselle = "http://tondauer.art/tesselle";

(: Loads regions drawn with Tesselle for a given surface. :)
declare function tesselle:load-regions($facsimile-id as xs:string, $surface-id as xs:string) as item()* {
  try {
    (: Parse slideshow.json and convert it to XML. :)
    let $tesselle-xml := json-to-xml(
      unparsed-text(
	concat(
	  "tesselle/",
	  $facsimile-id,
	  "/",
	  $surface-id,
	  "/slideshow.json"
	),
	"UTF-8"))

    (: Get the image width and height in pixels. :)
    let $image := $tesselle-xml//fn:map[@key = "image"]
    let $image-width := xs:integer($image/fn:number[@key = "width"])
    let $image-height := xs:integer($image/fn:number[@key = "height"])

    (: Calculate the size of the bounding box that Tesselle used for its coordinates. :)
    let $bounding-box := tesselle:calculate-bounding-box($image-width, $image-height)
    let $max-x := $bounding-box[1]
    let $max-y := $bounding-box[2]
    return
      <regions>
	{
	  (: Convert Tesselle's data structure to a sequence of
	     elements containing Knora region definitions in JSON. :)
          for $region in $tesselle-xml//fn:array[@key = "annotations"]/fn:map
            let $region-id := string($region/fn:map[@key = "properties"]/fn:string[@key = "content"])
            let $coordinates := $region/fn:map[@key = "geometry"]/fn:array[@key = "coordinates"]/fn:array/fn:array
            let $points := tesselle:coordinates-to-knora-points($coordinates, $max-x, $max-y)
            return
              <region target="{$region-id}">{{"points": [{string-join($points, ", ")}], "type": "polygon"}}</region>
      }
    </regions>
  } catch err:FOUT1170 (: File not found, OK because maybe some regions haven't been drawn yet. :) {
    ()
  }  
};

(: Converts a sequence of Tesselle coordinates to a sequence of JSON
   strings representing points in a Knora region. :)
declare function tesselle:coordinates-to-knora-points($coordinates as element(fn:array)*,
  $max-x as xs:decimal,
  $max-y as xs:decimal) as xs:string* {
  for $coordinate in $coordinates
    let $x := xs:decimal($coordinate/fn:number[1]) div $max-x
    let $y := xs:decimal($coordinate/fn:number[2]) div $max-y
    return concat("{&#34;x&#34;: ", $x, ", &#34;y&#34;: ", $y, "}")
};

(: 
  Reimplementation of Tesselle's bounding box calculation, needed to
  convert Tesselle coordinates to points in a Knora region. Based on:

  https://github.com/medialab/tesselle/blob/949b7e2c30fb38abbfc65efbce2f67e76cbc7bd0/app/utils/hooks.ts#L110
  https://github.com/medialab/tesselle/blob/949b7e2c30fb38abbfc65efbce2f67e76cbc7bd0/app/types/IIIFStatic.ts#L57
:)
declare function tesselle:calculate-bounding-box($image-width as xs:integer, $image-height as xs:integer) as xs:decimal* {
  let $denominator := xs:decimal(tesselle:make-scale-factor(512, $image-width, 512, $image-height))
  return (xs:decimal($image-width) div $denominator, xs:decimal(-$image-height) div $denominator)
};

declare function tesselle:make-scale-factor(
  $tile-width as xs:integer,
  $width as xs:integer,
  $tile-height as xs:integer,
  $height as xs:integer) as xs:integer* {
  tesselle:make-scale-factor-rec(1, $tile-width, $width, $tile-height, $height)
};

declare function tesselle:make-scale-factor-rec(
  $power,
  $tile-width as xs:integer,
  $width as xs:integer,
  $tile-height as xs:integer,
  $height as xs:integer) as xs:integer {
  let $scale-factor := tesselle:two-to-the($power) return
    if ($power = 29 or (($tile-width * $scale-factor gt $width) and ($tile-height * $scale-factor gt $height))) then
      $scale-factor
    else
      tesselle:make-scale-factor-rec(
        $power + 1,
        $tile-width,
        $width,
        $tile-height,
        $height
      )
};

(: Returns 2 to the nth power. :)
declare function tesselle:two-to-the($n as xs:integer) as xs:integer {
  if ($n = 0) then 1 else 2 * tesselle:two-to-the($n - 1)
};
