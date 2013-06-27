## libming-noconfig

This repository tries to build [libming](http://libming.org/) (and its dependencies) without configure scripts.

Ming is a library written in C to output SWF (Flash animation) files.
This repository includes major part of the original libming source code,
with some modifications to make it conform to ANSI C standard.
Also, you don't need to run a configure script (which is a pain in Windows) to build the library.
All you have to do is entering the directory and running the `make` command.

```
cd libming-noconfig
make
```

To better meet your own need in building the library,
you may pass other variables to `make` command,

```
make CC=gcc CFLAGS="-O0 -g"
```
or manually modify the Makefile, which should be easier to read
and modify than the auto-generated one by `configure`.

### What's included

The Ming library also depends on some other libraries like zlib, libpng
and freetype. In order to build the library on its own, those source codes
are also included in this repository:

- Ming 0.4.5 ([http://libming.org/](http://libming.org/))
- zlib 1.2.8 ([http://zlib.net/](http://zlib.net/))
- libpng 1.6.2 ([http://libpng.org/](http://libpng.org/))
- freetype 2.5.0 ([http://freetype.org/](http://freetype.org/))

### What's not included
- Extention modules for libming, for example, C++/PHP/Python wrappers
- GIF support for libming
- Modules of freetype other than TTF font support
