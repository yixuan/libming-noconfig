CC = gcc
AR = ar
CFLAGS = -O2
CPPFLAGS = 


.PHONY: all clean

all: zlib/libz.a libpng/libpng.a freetype/libfreetype.a libming/libming.a

zlib/libz.a:
	cd zlib && $(MAKE) all CC="$(CC)" AR="$(AR)" CPPFLAGS="$(CPPFLAGS)" CFLAGS="$(CFLAGS)"

libpng/libpng.a:
	cd libpng && $(MAKE) all CC="$(CC)" AR="$(AR)" CPPFLAGS="$(CPPFLAGS)" CFLAGS="$(CFLAGS)"

freetype/libfreetype.a:
	cd freetype && $(MAKE) all CC="$(CC)" AR="$(AR)" CPPFLAGS="$(CPPFLAGS)" CFLAGS="$(CFLAGS)"

libming/libming.a:
	cd libming && $(MAKE) all CC="$(CC)" AR="$(AR)" CPPFLAGS="$(CPPFLAGS)" CFLAGS="$(CFLAGS)"

clean:
	$(RM) *.o
	$(RM) *.dll
	$(RM) *.so
	cd zlib && $(MAKE) clean
	cd libpng && $(MAKE) clean
	cd freetype && $(MAKE) clean
	cd libming && $(MAKE) clean

