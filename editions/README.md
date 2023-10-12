## Building the editions from source

These editions use [LilyPond](https://lilypond.org) and
[LaTeX](https://www.latex-project.org/) to render a critical edition
and (in some cases) a separate performance edition from each score.

## Requirements

The following works with Ubuntu 22.04.

### LilyPond

Download from [lilypond.org](https://lilypond.org/).

### TeX

```
sudo apt install texlive-full
```

## Building

To build an edition in one of the subdirectories here:

```
make
```
