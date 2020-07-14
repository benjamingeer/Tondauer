# TODO

## Data import

Currently we can generate a knora-py XML import document using
XQuery. What's left:

- See if there's an IIIF-compatible way to encode facsimiles,
  surfaces, and zones in MEI. See [this
  thread](https://lists.uni-paderborn.de/pipermail/mei-l/2016/001839.html).

  - Currently we can use
    [Tesselle](https://github.com/medialab/tesselle/) to draw regions,
    then merge them with the MEI zones to make Knora regions.
	
  - Try using Mirador for this.

- Use knora-py to make a simple ontology for musical
  editions. Maybe something like this to start with:
  
  - Something for facsimiles.
	
  - An `Annotation` class, with:
  
    - Text with standoff markup (can use the standard
      mapping). Currently knora-py requires markup to be
      Base64-encoded
      ([DSP-471](https://dasch.myjetbrains.com/youtrack/issue/DSP-471)),
      which we can't do in XQuery.
  
    - An annotation ID (a `TextValue`).
  
    - Annotation target IDs (each one a `TextValue`).
	
	- Links to regions (from the `facs` attribute of the `<annot>`).

- Figure out how to use knora-base classes in knora-py
  ([DSP-477](https://dasch.myjetbrains.com/youtrack/issue/DSP-477)).

- Import some MEI data into Knora for testing.

## Loading annotations

In TypeScript:

- Do a Gravsearch query to get the annotation ID and the target IDs
  for all the annotations in an edition.
  
- Invert the map to make a map of target IDs to annotation IDs.

- For each SVG element whose ID is an annotation target ID, colour the
  element red, and add a click event listener that uses Gravsearch to
  get the text of the annotation and display it above the score.

## Search

It would be nice to demo extended searches like, "find the annotations
that refer to a source published in London before 1870".

## Displaying facsimiles

If an annotation contains a link to a region of a facsimile, open a
IIIF viewer that displays the region as an SVG rectangle drawn over
the facsimile.

## Viewing in Verovio

- For now, we can keep the MEI file on GitHub. In future we will store
  it in an XML database.

- Figure out how to do paging, zoom, etc., with Verovio.
