# Converting MEI to a knora-py XML import

This is a proof-of-concept for importing MEI data into Knora using
[knora-py](https://github.com/dasch-swiss/knora-py).

## Generated resource classes

| MEI           | Knora           |
|---------------|-----------------|
| `<source>`    | `Source`        |
| `<facsimile>` | `Facsimile`     |
| `<surface>`   | `FacsimilePage` |
| `<zone>`      | `Region`        |
| `<annot>`     | `Annotation`    |

## How to structure the input

The MEI input file must follow these conventions:

- Each `<source>` must have a `<bibl>` containing a `<name>`,
  which should be the source's abbreviated name (for use in annotations) and
  can contain markup.

- Facsimile images must be in a directory `./facsimiles`, in which
  there's a subdirectory for each `<facsimile>`, and an image file for
  each `<surface>`. The name of each facsimile's subdirectory must be
  the ID of the `<facsimile>`.

- Each `<facsimile>` must contain a `<surface>` for each page,
  specifying its page number with `@n`.

- Each `<surface>` must contain a `<graphic>`, whose `@target` is the
  image's filename in the facsimile's directory.

- Each `<zone>` must contain a `<figDesc>`, which can contain markup.

- The coordinates of zones are loaded from an external provider and
  converted to Knora `Region` resources. Currently
  [Tesselle](https://github.com/medialab/tesselle/) is supported.
  
  - One Tesselle Zip file must be made for each `<surface>` that has
    zones.
  
  - The filename of the Zip file must be the surface ID plus `.zip`,
    and it must be saved in the directory `./tesselle`.

  - The text content of each Tesselle annotation must be the zone ID.
	
  - The Makefile extracts JSON files from the Zip files.
    These JSON files can be kept in git. The Zip file should be
    saved somewhere else, so that if a surface's zones need to be
    changed, its Zip file can be reloaded into Tesselle, edited,
    and downloaded again.
    
- Each `<lem>` should specify its sources in `@source`, using the IDs of
  `<source>` elements.

- Each `<annot>` must have a `<measure>` as its parent element. Probably
  we will require annotations to be collected at the end of each
  measure for automated update.

- Each `<annot>` must use `@n` to specify its 1-based index among the
  annotations in the same measure, so a critical report can be
  generated with the annotations in the correct order.

- The IDs in the `@plist` of an `<annot>` (its targets) should be
  `<app>` or `<choice>` elements, so the annotations will still be
  shown even if different readings are displayed in Verovio.

- If an `<annot>` refers to zones, their IDs must be specified in its
  `@facs`.

- An `<annot>` can contain markup.

## Markup

Markup can be activated or deactivated in the `Makefile`. If it is
activated, markup tags are converted to standoff/XML using Knora's
standard mapping. This doesn't work with the current knora-py, so it's
deactivated by default. A few markup elements are currently supported:

- `<p>`

- `<rend fontsyle="italic">`

- `<rend valign="bottom">`

- `<ptr target="#sid">`, where `sid` is the ID of a `<source>`
  element. This is replaced with the source's name. If markup is
  activated, the name is wrapped in a standoff link tag pointing to
  the generated `Source` resource.
