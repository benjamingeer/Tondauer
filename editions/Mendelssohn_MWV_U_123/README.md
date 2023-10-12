# Felix Mendelssohn, Prelude Op. 104a, No. 2 (MWV U 123)

## Building the edition

First see the [README](../README.md) in the parent directory.
For this edition, you'll need LilyPond 2.22.2.

Change the `PATH` at the top of the `Makefile` to correspond to
your LilyPond 2.22.2 installation if necessary.

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
