# TODO

## Data import

- Use knora-py to make a simple ontology for musical
  editions. Maybe something like this to start with:
  
  - An `Edition` class, with some basic metadata (title, composer,
    etc.).
	
  - Something for facsimiles. Can we use [MEI's support for
    facsimiles](https://music-encoding.org/guidelines/v4/content/facsimilesrecordings.html#facsimiles)
    with IIIF, or do we need something else? Conceptual requirements:
	
	- A source has one or more facsimiles (e.g. different copies of
      the same publication).
	
	- A facsimile has one or more pages (and can be a PDF).
	
	- A page can have regions, each of which could have an ID that we
      could use in MEI annotations. This seems better than referring
      to coordinates in the MEI document.
	
  - An `Annotation` class, with:
  
    - A link to the `Edition` that it belongs to.
  
    - Text with standoff markup (can use the standard mapping),
      possibly referring to region IDs.
  
    - An annotation ID (a `TextValue`).
  
    - One or more annotation target IDs (each one a `TextValue`).

- Write an XQuery program that extracts the annotations from an MEI
  document and converts them to a knora-py XML import file based on
  that ontology.
  
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
