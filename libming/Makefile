ZLIBINC = ../../zlib
ZLIBLIB = ../../zlib
ZLIB = $(ZLIBLIB)/libz.a

LIBPNGINC = ../../libpng
LIBPNGLIB = ../../libpng
LIBPNG = $(LIBPNGLIB)/libpng.a

FTCONFINC = ../../freetype/config
FTINC = ../../freetype/include
FTLIB = ../../freetype
FT = $(FTLIB)/libfreetype.a

CP = cp -fp
RM = rm -f

OBJS = blocklist.o compat.o displaylist.o fill.o font_util.o \
	gc.o ming.o ming_def.o movie.o movieclip.o \
	position.o shape_cubic.o shape_util.o text_util.o


.PHONY: all clean

all: $(OBJS)

.c.o:
	$(CC) $(CFLAGS) $(CPPFLAGS) -I. -c $< -o $@

clean:
	$(RM) *.o
