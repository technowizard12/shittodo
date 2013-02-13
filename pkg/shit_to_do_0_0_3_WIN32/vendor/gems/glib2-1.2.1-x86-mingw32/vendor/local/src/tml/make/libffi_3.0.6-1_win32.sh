# This is a shell script that calls functions and scripts from
# tml@iki.fi's personal work environment. It is not expected to be
# usable unmodified by others, and is included only for reference.

MOD=libffi
VER=3.0.6
REV=1
ARCH=win32

THIS=${MOD}_${VER}-${REV}_${ARCH}

RUNZIP=${MOD}_${VER}-${REV}_${ARCH}.zip
DEVZIP=${MOD}-dev_${VER}-${REV}_${ARCH}.zip

HEX=`echo $THIS | md5sum | cut -d' ' -f1`
TARGET=c:/devel/target/$HEX

usedev

(

set -x

patch -p0 <<\EOF
Index: Makefile.am
===================================================================
RCS file: /cvs/libffi/libffi/Makefile.am,v
retrieving revision 1.23
diff -u -r1.23 Makefile.am
--- Makefile.am 21 Feb 2008 13:36:18 -0000      1.23
+++ Makefile.am 28 Aug 2008 20:29:54 -0000
@@ -166,6 +166,9 @@
 AM_CFLAGS = -Wall -g -fexceptions

 libffi_la_LDFLAGS = -version-info `grep -v '^\#' $(srcdir)/libtool-version`
+if X86_WIN32
+libffi_la_LDFLAGS += -no-undefined
+endif

 AM_CPPFLAGS = -I. -I$(top_srcdir)/include -Iinclude -I$(top_srcdir)/src
 AM_CCASFLAGS = $(AM_CPPFLAGS)
Index: Makefile.in
===================================================================
RCS file: /cvs/libffi/libffi/Makefile.in,v
retrieving revision 1.25
diff -u -r1.25 Makefile.in
--- Makefile.in 21 Feb 2008 13:36:18 -0000      1.25
+++ Makefile.in 28 Aug 2008 20:29:56 -0000
@@ -420,7 +420,7 @@
 libffi_convenience_la_SOURCES = $(libffi_la_SOURCES)
 nodist_libffi_convenience_la_SOURCES = $(nodist_libffi_la_SOURCES)
 AM_CFLAGS = -Wall -g -fexceptions
-libffi_la_LDFLAGS = -version-info `grep -v '^\#' $(srcdir)/libtool-version`
+libffi_la_LDFLAGS = -version-info `grep -v '^\#' $(srcdir)/libtool-version` -no-undefined
 AM_CPPFLAGS = -I. -I$(top_srcdir)/include -Iinclude -I$(top_srcdir)/src
 AM_CCASFLAGS = $(AM_CPPFLAGS)
 all: fficonfig.h
EOF

CFLAGS=-O2 ./configure --disable-static --enable-shared --prefix=$TARGET &&
make -j3 install &&

cd /devel/target/$HEX &&

rm -f /tmp/$RUNZIP /tmp/$DEVZIP &&

zip /tmp/$RUNZIP bin/libffi-5.dll &&

zip /tmp/$DEVZIP lib/libffi.dll.a &&
zip -r -D /tmp/$DEVZIP lib/libffi-$VER/include &&
zip -r -D /tmp/$DEVZIP share/man/man3

) 2>&1 | tee /devel/src/tml/make/$THIS.log

(cd /devel && zip /tmp/$DEVZIP src/tml/make/$THIS.{sh,log}) &&
manifestify /tmp/$RUNZIP /tmp/$DEVZIP
