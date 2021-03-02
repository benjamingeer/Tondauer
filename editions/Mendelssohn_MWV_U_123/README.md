# Felix Mendelssohn, Prelude Op. 104a, No. 2 (MWV U 123)

The source code in this directory uses
[LilyPond](https://lilypond.org) and
[LaTeX](https://www.latex-project.org/) to render
different print editions from the same score:

- A critical edition
- A performance edition

## Requirements

The following works with Ubuntu 20.10.

### LilyPond

Download from [lilypond.org](https://lilypond.org/).

### openlilylib

Create a directory `openlilylib` (e.g. in the directory above the `Tondauer`
directory), containing:

- [notation-fonts](https://github.com/openlilylib/notation-fonts)
- [oll-core](https://github.com/openopenlilylib/lilylib/oll-core)
- [scholarly](https://github.com/openlilylib/scholarly)
- [stylesheets](https://github.com/openlilylib/stylesheets)

Add the following to your `.profile`:

```
export LILYPOND_INCLUDE=/path/to/openlilylib
```

### TeX

```
sudo apt install texlive-full
```

## Building

To build the editions:

```
make
```
