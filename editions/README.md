## Building the editions from source

These editions use [LilyPond](https://lilypond.org) and
[LaTeX](https://www.latex-project.org/) to render a critical edition
and a performance edition from each score.

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

To build an edition in one of the subdirectories here:

```
make
```
