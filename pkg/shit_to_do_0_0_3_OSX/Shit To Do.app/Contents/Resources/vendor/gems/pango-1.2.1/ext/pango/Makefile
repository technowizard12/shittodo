
SHELL = /bin/sh

# V=0 quiet, V=1 verbose.  other values don't work.
V = 0
Q1 = $(V:1=)
Q = $(Q1:0=@)
n=$(NULLCMD)
ECHO1 = $(V:1=@$n)
ECHO = $(ECHO1:0=@echo)

#### Start of system configuration section. ####

srcdir = .
topdir = /home/simon/.rvm/rubies/ruby-1.9.3-p194/include/ruby-1.9.1
hdrdir = /home/simon/.rvm/rubies/ruby-1.9.3-p194/include/ruby-1.9.1
arch_hdrdir = /home/simon/.rvm/rubies/ruby-1.9.3-p194/include/ruby-1.9.1/$(arch)
VPATH = $(srcdir):$(arch_hdrdir)/ruby:$(hdrdir)/ruby
prefix = $(DESTDIR)/home/simon/.rvm/rubies/ruby-1.9.3-p194
rubylibprefix = $(libdir)/$(RUBY_BASE_NAME)
exec_prefix = $(prefix)
vendorhdrdir = $(rubyhdrdir)/vendor_ruby
sitehdrdir = $(rubyhdrdir)/site_ruby
rubyhdrdir = $(includedir)/$(RUBY_BASE_NAME)-$(ruby_version)
vendordir = $(rubylibprefix)/vendor_ruby
sitedir = $(rubylibprefix)/site_ruby
ridir = $(datarootdir)/$(RI_BASE_NAME)
mandir = $(datarootdir)/man
localedir = $(datarootdir)/locale
libdir = $(exec_prefix)/lib
psdir = $(docdir)
pdfdir = $(docdir)
dvidir = $(docdir)
htmldir = $(docdir)
infodir = $(datarootdir)/info
docdir = $(datarootdir)/doc/$(PACKAGE)
oldincludedir = $(DESTDIR)/usr/include
includedir = $(prefix)/include
localstatedir = $(prefix)/var
sharedstatedir = $(prefix)/com
sysconfdir = $(prefix)/etc
datadir = $(datarootdir)
datarootdir = $(prefix)/share
libexecdir = $(exec_prefix)/libexec
sbindir = $(exec_prefix)/sbin
bindir = $(exec_prefix)/bin
rubylibdir = $(rubylibprefix)/$(ruby_version)
archdir = $(rubylibdir)/$(arch)
sitelibdir = $(sitedir)/$(ruby_version)
sitearchdir = $(sitelibdir)/$(sitearch)
vendorlibdir = $(vendordir)/$(ruby_version)
vendorarchdir = $(vendorlibdir)/$(sitearch)

NULLCMD = :

CC = gcc
CXX = g++
LIBRUBY = $(LIBRUBY_SO)
LIBRUBY_A = lib$(RUBY_SO_NAME)-static.a
LIBRUBYARG_SHARED = -Wl,-R -Wl,$(libdir) -L$(libdir) -l$(RUBY_SO_NAME)
LIBRUBYARG_STATIC = -Wl,-R -Wl,$(libdir) -L$(libdir) -l$(RUBY_SO_NAME)-static
OUTFLAG = -o 
COUTFLAG = -o 

RUBY_EXTCONF_H = 
cflags   =  $(optflags) $(debugflags) $(warnflags)
optflags = -O3
debugflags = -ggdb
warnflags = -Wextra -Wno-unused-parameter -Wno-parentheses -Wno-long-long -Wno-missing-field-initializers -Wpointer-arith -Wwrite-strings -Wdeclaration-after-statement -Wimplicit-function-declaration
CFLAGS   = -fPIC $(cflags)  -fPIC -Wall -Waggregate-return -Wcast-align -Wextra -Wformat=2 -Winit-self -Wlarger-than-65500 -Wmissing-declarations -Wmissing-format-attribute -Wmissing-include-dirs -Wmissing-noreturn -Wmissing-prototypes -Wnested-externs -Wold-style-definition -Wpacked -Wp,-D_FORTIFY_SOURCE=2 -Wpointer-arith -Wswitch-default -Wswitch-enum -Wundef -Wunsafe-loop-optimizations -Wwrite-strings -I/home/simon/.rvm/gems/ruby-1.9.3-p194/gems/cairo-1.12.3/ext/cairo -I/usr/include/cairo -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/pixman-1 -I/usr/include/freetype2 -I/usr/include/libpng12 -pthread -I/usr/include/pango-1.0 -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -pthread -I/usr/include/pango-1.0 -I/usr/include/cairo -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/pixman-1 -I/usr/include/freetype2 -I/usr/include/libpng12 $(ARCH_FLAG)
INCFLAGS = -I. -I/home/simon/.rvm/gems/ruby-1.9.3-p194/gems/glib2-1.2.1/ext/glib2 -I/home/simon/.rvm/gems/ruby-1.9.3-p194/gems/glib2-1.2.1/ext/glib2 -I/home/simon/.rvm/gems/ruby-1.9.3-p194/gems/glib2-1.2.1/ext/glib2 -I/home/simon/.rvm/gems/ruby-1.9.3-p194/gems/glib2-1.2.1/ext/glib2 -I/home/simon/.rvm/gems/ruby-1.9.3-p194/gems/glib2-1.2.1/ext/glib2 -I$(arch_hdrdir) -I$(hdrdir)/ruby/backward -I$(hdrdir) -I$(srcdir) -I$(sitearchdir)  -I$(vendorarchdir) 
DEFS     = 
CPPFLAGS = -DHAVE_RB_DEFINE_ALLOC_FUNC -DHAVE_RB_BLOCK_PROC -DHAVE_OBJECT_ALLOCATE -DHAVE_RB_ERRINFO -DHAVE_RB_CAIRO_H -DHAVE_PANGO_LAYOUT_ITER_GET_TYPE -DHAVE_PANGO_LAYOUT_SET_ELLIPSIZE -DHAVE_PANGO_LAYOUT_GET_FONT_DESCRIPTION -DHAVE_PANGO_RENDER_PART_GET_TYPE -DHAVE_PANGO_ATTR_STRIKETHROUGH_COLOR_NEW -DHAVE_PANGO_ATTR_UNDERLINE_COLOR_NEW -DHAVE_PANGO_GLYPH_ITEM_FREE -DHAVE_PANGO_GLYPH_ITEM_GET_TYPE -DHAVE_PANGO_ATTR_ITERATOR_GET_ATTRS -DHAVE_PANGO_ITEMIZE_WITH_BASE_DIR -DHAVE_PANGO_FONT_FAMILY_IS_MONOSPACE  -DRUBY_PANGO_COMPILATION -I/home/simon/.rvm/usr/include  $(DEFS) $(cppflags)
CXXFLAGS = $(CFLAGS) $(cxxflags)
ldflags  = -L.  -rdynamic -Wl,-export-dynamic -L/usr/lib/x86_64-linux-gnu -L/usr/lib/x86_64-linux-gnu -L/usr/lib/x86_64-linux-gnu
dldflags = 
ARCH_FLAG = 
DLDFLAGS = $(ldflags) $(dldflags) $(ARCH_FLAG)
LDSHARED = $(CC) -shared
LDSHAREDXX = $(CXX) -shared
AR = ar
EXEEXT = 

RUBY_BASE_NAME = ruby
RUBY_INSTALL_NAME = ruby
RUBY_SO_NAME = ruby
arch = x86_64-linux
sitearch = $(arch)
ruby_version = 1.9.1
ruby = /home/simon/.rvm/rubies/ruby-1.9.3-p194/bin/ruby
RUBY = $(ruby)
RM = rm -f
RM_RF = $(RUBY) -run -e rm -- -rf
RMDIRS = rmdir --ignore-fail-on-non-empty -p
MAKEDIRS = /bin/mkdir -p
INSTALL = /usr/bin/install -c
INSTALL_PROG = $(INSTALL) -m 0755
INSTALL_DATA = $(INSTALL) -m 644
COPY = cp

#### End of system configuration section. ####

preload = 

libpath = . $(libdir) /home/simon/.rvm/usr/lib
LIBPATH =  -L. -L$(libdir) -Wl,-R$(libdir) -L/home/simon/.rvm/usr/lib -Wl,-R/home/simon/.rvm/usr/lib
DEFFILE = 

CLEANFILES = mkmf.log
DISTCLEANFILES = rbpangoversion.h ruby-pango.pc
DISTCLEANDIRS = 

extout = 
extout_prefix = 
target_prefix = 
LOCAL_LIBS = 
LIBS = $(LIBRUBYARG_SHARED)  -lcairo -lpango-1.0 -lglib-2.0 -lgobject-2.0 -lpangocairo-1.0 -lpango-1.0 -lglib-2.0 -lgobject-2.0 -lcairo -lpthread -lrt -ldl -lcrypt -lm   -lc
SRCS = rbpangoengine.c rbpangocairo.c rbpangofontsetsimple.c rbpangoscriptiter.c rbpangofontdescription.c rbpangorectangle.c rbpangocairocontext.c rbpangolanguage.c rbpangoglyphstring.c rbpangolayoutiter.c rbpangofontset.c rbpangofontface.c rbpangotabarray.c rbpangoattrlist.c rbpangolayout.c rbpangoattriterator.c rbpangogravity.c rbpangofont.c rbpangologattr.c rbpangorenderer.c rbpangocoverage.c rbpangoitem.c rbpangomatrix.c rbpangofontmap.c rbpangocontext.c rbpangoattribute.c rbpangofontmetrics.c rbpangoglyphinfo.c rbpangoscript.c rbpangocolor.c rbpangofontfamily.c rbpangolayoutline.c rbpangoanalysis.c rbpangoglyphitem.c rbpango.c
OBJS = rbpangoengine.o rbpangocairo.o rbpangofontsetsimple.o rbpangoscriptiter.o rbpangofontdescription.o rbpangorectangle.o rbpangocairocontext.o rbpangolanguage.o rbpangoglyphstring.o rbpangolayoutiter.o rbpangofontset.o rbpangofontface.o rbpangotabarray.o rbpangoattrlist.o rbpangolayout.o rbpangoattriterator.o rbpangogravity.o rbpangofont.o rbpangologattr.o rbpangorenderer.o rbpangocoverage.o rbpangoitem.o rbpangomatrix.o rbpangofontmap.o rbpangocontext.o rbpangoattribute.o rbpangofontmetrics.o rbpangoglyphinfo.o rbpangoscript.o rbpangocolor.o rbpangofontfamily.o rbpangolayoutline.o rbpangoanalysis.o rbpangoglyphitem.o rbpango.o
TARGET = pango
DLLIB = $(TARGET).so
EXTSTATIC = 
STATIC_LIB = 

BINDIR        = $(bindir)
RUBYCOMMONDIR = $(sitedir)$(target_prefix)
RUBYLIBDIR = /home/simon/.rvm/gems/ruby-1.9.3-p194/gems/pango-1.2.1/lib$(target_prefix)
RUBYARCHDIR = /home/simon/.rvm/gems/ruby-1.9.3-p194/gems/pango-1.2.1/lib$(target_prefix)
HDRDIR        = $(rubyhdrdir)/ruby$(target_prefix)
ARCHHDRDIR    = $(rubyhdrdir)/$(arch)/ruby$(target_prefix)

TARGET_SO     = $(DLLIB)
CLEANLIBS     = $(TARGET).so 
CLEANOBJS     = *.o  *.bak

all:    $(DLLIB)
static: $(STATIC_LIB)
.PHONY: all install static install-so install-rb
.PHONY: clean clean-so clean-rb

clean-rb-default::
clean-rb::
clean-so::
clean: clean-so clean-rb-default clean-rb
		@-$(RM) $(CLEANLIBS) $(CLEANOBJS) $(CLEANFILES)

distclean-rb-default::
distclean-rb::
distclean-so::
distclean: clean distclean-so distclean-rb-default distclean-rb
		@-$(RM) Makefile $(RUBY_EXTCONF_H) conftest.* mkmf.log
		@-$(RM) core ruby$(EXEEXT) *~ $(DISTCLEANFILES)
		@-$(RMDIRS) $(DISTCLEANDIRS) 2> /dev/null || true

realclean: distclean
install: install-so install-rb

install-so: $(RUBYARCHDIR)
install-so: $(RUBYARCHDIR)/$(DLLIB)
$(RUBYARCHDIR)/$(DLLIB): $(DLLIB)
	@-$(MAKEDIRS) $(@D)
	$(INSTALL_PROG) $(DLLIB) $(@D)
install-rb: pre-install-rb install-rb-default
install-rb-default: pre-install-rb-default
pre-install-rb: Makefile
pre-install-rb-default: Makefile
pre-install-rb-default:
	$(ECHO) installing default pango libraries
$(RUBYARCHDIR):
	$(Q) $(MAKEDIRS) $@

site-install: site-install-so site-install-rb
site-install-so: install-so
site-install-rb: install-rb

.SUFFIXES: .c .m .cc .mm .cxx .cpp .C .o

.cc.o:
	$(ECHO) compiling $(<)
	$(Q) $(CXX) $(INCFLAGS) $(CPPFLAGS) $(CXXFLAGS) $(COUTFLAG)$@ -c $<

.mm.o:
	$(ECHO) compiling $(<)
	$(Q) $(CXX) $(INCFLAGS) $(CPPFLAGS) $(CXXFLAGS) $(COUTFLAG)$@ -c $<

.cxx.o:
	$(ECHO) compiling $(<)
	$(Q) $(CXX) $(INCFLAGS) $(CPPFLAGS) $(CXXFLAGS) $(COUTFLAG)$@ -c $<

.cpp.o:
	$(ECHO) compiling $(<)
	$(Q) $(CXX) $(INCFLAGS) $(CPPFLAGS) $(CXXFLAGS) $(COUTFLAG)$@ -c $<

.C.o:
	$(ECHO) compiling $(<)
	$(Q) $(CXX) $(INCFLAGS) $(CPPFLAGS) $(CXXFLAGS) $(COUTFLAG)$@ -c $<

.c.o:
	$(ECHO) compiling $(<)
	$(Q) $(CC) $(INCFLAGS) $(CPPFLAGS) $(CFLAGS) $(COUTFLAG)$@ -c $<

.m.o:
	$(ECHO) compiling $(<)
	$(Q) $(CC) $(INCFLAGS) $(CPPFLAGS) $(CFLAGS) $(COUTFLAG)$@ -c $<

$(DLLIB): $(OBJS) Makefile
	$(ECHO) linking shared-object $(DLLIB)
	@-$(RM) $(@)
	$(Q) $(LDSHARED) -o $@ $(OBJS) $(LIBPATH) $(DLDFLAGS) $(LOCAL_LIBS) $(LIBS)



###
install-so: install-headers
install-headers:
	$(INSTALL_DATA) $(srcdir)/rbpango.h $(RUBYARCHDIR)
	$(INSTALL_DATA) $(srcdir)/rbpangoconversions.h $(RUBYARCHDIR)
	$(INSTALL_DATA) rbpangoversion.h $(RUBYARCHDIR)

install: install-pc
install-pc:
	if test -n "$(pkgconfigdir)"; then			\
	  $(MAKEDIRS) $(pkgconfigdir);				\
	  $(INSTALL_DATA) ruby-pango.pc $(pkgconfigdir);	\
	fi
