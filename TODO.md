# TODO

## Data import

- Figure out an IIIF-compatible way to encode facsimiles, surfaces,
  and zones in MEI. See [this
  thread](https://lists.uni-paderborn.de/pipermail/mei-l/2016/001839.html).

  - Try using Mirador to draw the regions and save the coordinates in
    the MEI document as percentages of width and height.

- Use knora-py to make a simple ontology for musical
  editions. Maybe something like this to start with:
  
  - Something for facsimiles.
	
  - An `Annotation` class, with:
  
    - A link to the `Edition` that it belongs to.
  
    - Text with standoff markup (can use the standard mapping),
      possibly referring to region IDs.
  
    - An annotation ID (a `TextValue`).
  
    - One or more annotation target IDs (each one a `TextValue`).

- Write an XQuery program that extracts the annotations (and maybe
  facsimiles and regions) from an MEI document and converts them to a
  knora-py XML import file based on that ontology.
  
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

In TypeScript:

- If an annotation contains a link to a region of a facsimile, open a
  IIIF viewer that displays the region as an SVG rectangle drawn over
  the facsimile.
  
- Also be able to display the full contents of each facsimile and page
  through them in a IIIF viewer. Some facsimiles may be PDFs, so use
  Sipi's PDF functionality for this.

## Viewing in Verovio

- For now, we can keep the MEI file on GitHub. In future we will store
  it in an XML database.

- Figure out how to do paging, zoom, etc., with Verovio.
