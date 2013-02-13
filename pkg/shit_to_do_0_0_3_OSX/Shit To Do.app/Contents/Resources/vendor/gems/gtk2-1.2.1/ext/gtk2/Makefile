
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
CFLAGS   = -fPIC $(cflags)  -fPIC -Wall -Waggregate-return -Wcast-align -Wextra -Wformat=2 -Winit-self -Wlarger-than-65500 -Wmissing-declarations -Wmissing-format-attribute -Wmissing-include-dirs -Wmissing-noreturn -Wmissing-prototypes -Wnested-externs -Wold-style-definition -Wpacked -Wp,-D_FORTIFY_SOURCE=2 -Wpointer-arith -Wswitch-default -Wswitch-enum -Wundef -Wunsafe-loop-optimizations -Wwrite-strings -I/home/simon/.rvm/gems/ruby-1.9.3-p194/gems/cairo-1.12.3/ext/cairo -I/usr/include/cairo -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/pixman-1 -I/usr/include/freetype2 -I/usr/include/libpng12 -pthread -I/usr/include/gtk-2.0 -I/usr/include/pango-1.0 -I/usr/include/freetype2 -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/libpng12 -I/usr/include/cairo -I/usr/include/pixman-1 -I/usr/include/atk-1.0 -I/usr/lib/x86_64-linux-gnu/gtk-2.0/include -I/usr/include/gio-unix-2.0/ -pthread -I/usr/include/gtk-unix-print-2.0 -I/usr/include/pango-1.0 -I/usr/include/freetype2 -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/libpng12 -I/usr/include/cairo -I/usr/include/pixman-1 -I/usr/include/atk-1.0 -I/usr/include/gtk-2.0 -I/usr/lib/x86_64-linux-gnu/gtk-2.0/include -I/usr/include/gio-unix-2.0/ $(ARCH_FLAG)
INCFLAGS = -I. -I/home/simon/.rvm/gems/ruby-1.9.3-p194/gems/gdk_pixbuf2-1.2.1/ext/gdk_pixbuf2 -I/home/simon/.rvm/gems/ruby-1.9.3-p194/gems/gdk_pixbuf2-1.2.1/ext/gdk_pixbuf2 -I/home/simon/.rvm/gems/ruby-1.9.3-p194/gems/gdk_pixbuf2-1.2.1/ext/gdk_pixbuf2 -I/home/simon/.rvm/gems/ruby-1.9.3-p194/gems/gdk_pixbuf2-1.2.1/ext/gdk_pixbuf2 -I/home/simon/.rvm/gems/ruby-1.9.3-p194/gems/gdk_pixbuf2-1.2.1/ext/gdk_pixbuf2 -I/home/simon/.rvm/gems/ruby-1.9.3-p194/gems/pango-1.2.1/ext/pango -I/home/simon/.rvm/gems/ruby-1.9.3-p194/gems/pango-1.2.1/ext/pango -I/home/simon/.rvm/gems/ruby-1.9.3-p194/gems/pango-1.2.1/ext/pango -I/home/simon/.rvm/gems/ruby-1.9.3-p194/gems/pango-1.2.1/ext/pango -I/home/simon/.rvm/gems/ruby-1.9.3-p194/gems/pango-1.2.1/ext/pango -I/home/simon/.rvm/gems/ruby-1.9.3-p194/gems/atk-1.2.1/ext/atk -I/home/simon/.rvm/gems/ruby-1.9.3-p194/gems/atk-1.2.1/ext/atk -I/home/simon/.rvm/gems/ruby-1.9.3-p194/gems/atk-1.2.1/ext/atk -I/home/simon/.rvm/gems/ruby-1.9.3-p194/gems/atk-1.2.1/ext/atk -I/home/simon/.rvm/gems/ruby-1.9.3-p194/gems/atk-1.2.1/ext/atk -I/home/simon/.rvm/gems/ruby-1.9.3-p194/gems/glib2-1.2.1/ext/glib2 -I/home/simon/.rvm/gems/ruby-1.9.3-p194/gems/glib2-1.2.1/ext/glib2 -I/home/simon/.rvm/gems/ruby-1.9.3-p194/gems/glib2-1.2.1/ext/glib2 -I/home/simon/.rvm/gems/ruby-1.9.3-p194/gems/glib2-1.2.1/ext/glib2 -I/home/simon/.rvm/gems/ruby-1.9.3-p194/gems/glib2-1.2.1/ext/glib2 -I$(arch_hdrdir) -I$(hdrdir)/ruby/backward -I$(hdrdir) -I$(srcdir) -I$(sitearchdir)  -I$(vendorarchdir) 
DEFS     = 
CPPFLAGS = -DHAVE_RB_DEFINE_ALLOC_FUNC -DHAVE_RB_BLOCK_PROC -DHAVE_OBJECT_ALLOCATE -DHAVE_RB_ERRINFO -DHAVE_RB_CAIRO_H -DHAVE_ST_H -DHAVE_RUBY_ST_H -DRUBY_GTK2_TARGET=\"x11\" -DHAVE_GTK_PLUG_GET_TYPE -DHAVE_GTK_SOCKET_GET_TYPE -DHAVE_PANGO_RENDER_PART_GET_TYPE -DHAVE_X11_XLIB_H -DHAVE_XREADBITMAPFILEDATA -DHAVE_XGETERRORTEXT -DHAVE_GTK_UNIX_PRINT -DRUBY_GTK2_COMPILATION -I/home/simon/.rvm/usr/include  $(DEFS) $(cppflags)
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
DISTCLEANFILES = ruby-gtk2.pc rbgdkkeysyms.h
DISTCLEANDIRS = 

extout = 
extout_prefix = 
target_prefix = 
LOCAL_LIBS = 
LIBS = $(LIBRUBYARG_SHARED) -lX11  -lcairo -lgtk-x11-2.0 -lgdk-x11-2.0 -lpango-1.0 -lglib-2.0 -lgobject-2.0 -lpangocairo-1.0 -lcairo -lgdk_pixbuf-2.0 -latk-1.0 -lgio-2.0 -lpangoft2-1.0 -lfreetype -lfontconfig -lgtk-x11-2.0 -lgdk-x11-2.0 -lpango-1.0 -lglib-2.0 -lgobject-2.0 -lpangocairo-1.0 -lcairo -lgdk_pixbuf-2.0 -latk-1.0 -lgio-2.0 -lpangoft2-1.0 -lfreetype -lfontconfig -lpthread -lrt -ldl -lcrypt -lm   -lc
SRCS = rbgtktooltips.c rbgtkaccelkey.c rbgtkrcstyle.c rbgtktearoffmenuitem.c rbgtktexttag.c rbgtkoptionmenu.c rbgtkprintsettings.c rbgtkiconsize.c rbgtkrange.c rbgdkpango.c rbgtkfontselectiondialog.c rbgtkpaned.c rbgtkfilechooserbutton.c rbgtkrecentmanager.c rbgtkradiobutton.c rbgtkcellrenderertext.c rbgtkspinbutton.c rbgtkcellrendererspinner.c rbgdkscreen.c rbgtkselection.c rbgtktogglebutton.c rbgtktoolbar.c rbgtkrecentinfo.c rbgtkselectiondata.c rbgtkrecentchooserdialog.c rbgtkhseparator.c rbgtkmenutoolbutton.c rbgtkseparatortoolitem.c rbgtkcheckmenuitem.c rbgtkseparator.c rbgtkeditable.c rbgdkconst.c rbgtkprogressbar.c rbgtkvbbox.c rbgtkrecentchooser.c rbgtkfilechooserdialog.c rbgtkscrolledwindow.c rbgtkviewport.c rbgtkhscrollbar.c rbgtkarrow.c rbgdkregion.c rbgtktreestore.c rbgtkrecentfilterinfo.c rbgtkpagesetup.c rbgtktextappearance.c rbgtktreemodel.c rbgtksettings.c rbgtkprintoperation.c rbgtkconst.c rbgtklabel.c rbgdkwindowattr.c rbgdktimecoord.c rbgtkallocation.c rbgtkdrag.c rbgtkfontselection.c rbgtkvpaned.c rbgtktextchild.c rbgtkrecentaction.c rbgtkaction.c rbgtktooltip.c rbgtktreeselection.c rbgtkmenuitem.c rbgtkcombobox.c rbgtkcomboboxentry.c rbgdkwindow.c rbgtkprogress.c rbgtktoggletoolbutton.c rbgtkwindow.c rbgtkmenu.c rbgtkgamma.c rbgdkselection.c rbgtkitem.c rbgtkmenubar.c rbgdkevent.c rbgtkcolorbutton.c rbgtkcellrendererpixbuf.c rbgtkhscale.c rbgtkaccellabel.c rbgtktreemodelfilter.c rbgtkstatusicon.c rbgtksocket.c rbgtkbutton.c rbgtkcheckbutton.c rbgtkscalebutton.c rbgtkbin.c rbgtkinfobar.c rbgtkvruler.c rbgtkliststore.c rbgdkdisplay.c rbgdkdraw.c rbgdkcolormap.c rbgdkrectangle.c rbgtkinvisible.c rbgtkprintcontext.c rbgtkwindowgroup.c rbgtkmenushell.c rbgtkcontainer.c rbgtkimmulticontext.c rbgtkcurve.c rbgtkaspectframe.c rbgtk.c rbgtkclipboard.c rbgtkseparatormenuitem.c rbgdkdisplaymanager.c rbgtkcalendar.c rbgtktextiter.c rbgdkimage.c rbgtkaccessible.c rbgtkcellrenderertoggle.c rbgtktreemodelsort.c rbgtkimcontextsimple.c rbgdkcursor.c rbgdkgc.c rbgtkcellrendereraccel.c rbgtkrecentdata.c rbgtkradiotoolbutton.c rbgtktargetlist.c rbgtkuimanager.c rbgtkvscrollbar.c rbgtktreesortable.c rbgtkitemfactory.c rbgdkpixmap.c rbgtkcellrenderercombo.c rbgtkimage.c rbgdkvisual.c rbgtkradiomenuitem.c rbgtkvscale.c rbgtkplug.c rbgtkbbox.c rbgtkruler.c rbgtklinkbutton.c rbgtkpagesetupunixdialog.c rbgtktreepath.c rbgtktoolbutton.c rbgtkhpaned.c rbgtktextattributes.c rbgtktoolitem.c rbgtkspinner.c rbgtktreeview.c rbgtkiconinfo.c rbgdkpangorenderer.c rbgtkiconview.c rbgtkrecentchoosermenu.c rbgtkstatusbar.c rbgtkprintunixdialog.c rbgtkfixed.c rbgtkframe.c rbgdkgeometry.c rbgtkassistant.c rbgtkcelleditable.c rbgtkdialog.c rbgtktreedragsource.c rbgtkaccelmap.c rbgtkcellview.c rbgtkeventbox.c rbgtkcolorsel.c rbgdkdevice.c rbgtkinputdialog.c rbgdkkeymap.c rbgtkradioaction.c rbgtkcolorselectiondialog.c rbgtktreeiter.c rbgtkexpander.c rbgtkicontheme.c rbgdk.c rbgtkmisc.c rbgtktable.c rbgtktreerowreference.c rbgtktextview.c rbgtkscrollbar.c rbgtkprintjob.c rbgdkinput.c rbgdkrgb.c rbgtktreeviewcolumn.c rbgtkwidget.c rbgtkvolumebutton.c rbgdkdragcontext.c rbgtkbindingset.c rbgtkbox.c rbgtkfontbutton.c rbgtktoggleaction.c rbgtkalignment.c rbgtkhruler.c rbgtkentry.c rbgtkrecentfilter.c rbgtksizegroup.c rbgtkiconsource.c rbgtkprintoperationpreview.c rbgtktreedragdest.c rbgdkx11.c rbgtkcellrendererprogress.c rbgtktextbuffer.c rbgtkcelllayout.c rbgtkprinter.c rbgtkaccelgroup.c rbgtktextmark.c rbgtkfilesystemerror.c rbgdkcairo.c rbgtkaccelerator.c rbgtkstyle.c rbgtkrecentchooserwidget.c rbgtknotebook.c rbgtkmessagedialog.c rbgtkiconset.c init.c rbgtkbuilder.c rbgtkdrawingarea.c rbgtkvseparator.c rbgtkhbbox.c rbgtkfilefilter.c rbgdkcolor.c rbgtkobject.c rbgtkhbox.c rbgtkimcontext.c rbgtkcellrenderer.c rbgtkpapersize.c rbgtkfilechooser.c rbgtkrc.c rbgtklayout.c rbgdkthreads.c rbgtktexttagtable.c rbgdkkeyval.c rbgtkcellrendererspin.c rbgdkpixbuf.c rbgtkstock.c rbgtkadjustment.c rbgtkborder.c rbgtkcombo.c rbgtkaccelgroupentry.c rbgtkscale.c rbgtkimagemenuitem.c rbgtkfilechooserwidget.c rbgdkatom.c rbgtkiconfactory.c rbgtkactiongroup.c rbgtkvbox.c rbgdkproperty.c rbgtkaboutdialog.c rbgtkfilesel.c rbgtkentrycompletion.c rbgtkbuildable.c rbgtkhandlebox.c
OBJS = rbgtktooltips.o rbgtkaccelkey.o rbgtkrcstyle.o rbgtktearoffmenuitem.o rbgtktexttag.o rbgtkoptionmenu.o rbgtkprintsettings.o rbgtkiconsize.o rbgtkrange.o rbgdkpango.o rbgtkfontselectiondialog.o rbgtkpaned.o rbgtkfilechooserbutton.o rbgtkrecentmanager.o rbgtkradiobutton.o rbgtkcellrenderertext.o rbgtkspinbutton.o rbgtkcellrendererspinner.o rbgdkscreen.o rbgtkselection.o rbgtktogglebutton.o rbgtktoolbar.o rbgtkrecentinfo.o rbgtkselectiondata.o rbgtkrecentchooserdialog.o rbgtkhseparator.o rbgtkmenutoolbutton.o rbgtkseparatortoolitem.o rbgtkcheckmenuitem.o rbgtkseparator.o rbgtkeditable.o rbgdkconst.o rbgtkprogressbar.o rbgtkvbbox.o rbgtkrecentchooser.o rbgtkfilechooserdialog.o rbgtkscrolledwindow.o rbgtkviewport.o rbgtkhscrollbar.o rbgtkarrow.o rbgdkregion.o rbgtktreestore.o rbgtkrecentfilterinfo.o rbgtkpagesetup.o rbgtktextappearance.o rbgtktreemodel.o rbgtksettings.o rbgtkprintoperation.o rbgtkconst.o rbgtklabel.o rbgdkwindowattr.o rbgdktimecoord.o rbgtkallocation.o rbgtkdrag.o rbgtkfontselection.o rbgtkvpaned.o rbgtktextchild.o rbgtkrecentaction.o rbgtkaction.o rbgtktooltip.o rbgtktreeselection.o rbgtkmenuitem.o rbgtkcombobox.o rbgtkcomboboxentry.o rbgdkwindow.o rbgtkprogress.o rbgtktoggletoolbutton.o rbgtkwindow.o rbgtkmenu.o rbgtkgamma.o rbgdkselection.o rbgtkitem.o rbgtkmenubar.o rbgdkevent.o rbgtkcolorbutton.o rbgtkcellrendererpixbuf.o rbgtkhscale.o rbgtkaccellabel.o rbgtktreemodelfilter.o rbgtkstatusicon.o rbgtksocket.o rbgtkbutton.o rbgtkcheckbutton.o rbgtkscalebutton.o rbgtkbin.o rbgtkinfobar.o rbgtkvruler.o rbgtkliststore.o rbgdkdisplay.o rbgdkdraw.o rbgdkcolormap.o rbgdkrectangle.o rbgtkinvisible.o rbgtkprintcontext.o rbgtkwindowgroup.o rbgtkmenushell.o rbgtkcontainer.o rbgtkimmulticontext.o rbgtkcurve.o rbgtkaspectframe.o rbgtk.o rbgtkclipboard.o rbgtkseparatormenuitem.o rbgdkdisplaymanager.o rbgtkcalendar.o rbgtktextiter.o rbgdkimage.o rbgtkaccessible.o rbgtkcellrenderertoggle.o rbgtktreemodelsort.o rbgtkimcontextsimple.o rbgdkcursor.o rbgdkgc.o rbgtkcellrendereraccel.o rbgtkrecentdata.o rbgtkradiotoolbutton.o rbgtktargetlist.o rbgtkuimanager.o rbgtkvscrollbar.o rbgtktreesortable.o rbgtkitemfactory.o rbgdkpixmap.o rbgtkcellrenderercombo.o rbgtkimage.o rbgdkvisual.o rbgtkradiomenuitem.o rbgtkvscale.o rbgtkplug.o rbgtkbbox.o rbgtkruler.o rbgtklinkbutton.o rbgtkpagesetupunixdialog.o rbgtktreepath.o rbgtktoolbutton.o rbgtkhpaned.o rbgtktextattributes.o rbgtktoolitem.o rbgtkspinner.o rbgtktreeview.o rbgtkiconinfo.o rbgdkpangorenderer.o rbgtkiconview.o rbgtkrecentchoosermenu.o rbgtkstatusbar.o rbgtkprintunixdialog.o rbgtkfixed.o rbgtkframe.o rbgdkgeometry.o rbgtkassistant.o rbgtkcelleditable.o rbgtkdialog.o rbgtktreedragsource.o rbgtkaccelmap.o rbgtkcellview.o rbgtkeventbox.o rbgtkcolorsel.o rbgdkdevice.o rbgtkinputdialog.o rbgdkkeymap.o rbgtkradioaction.o rbgtkcolorselectiondialog.o rbgtktreeiter.o rbgtkexpander.o rbgtkicontheme.o rbgdk.o rbgtkmisc.o rbgtktable.o rbgtktreerowreference.o rbgtktextview.o rbgtkscrollbar.o rbgtkprintjob.o rbgdkinput.o rbgdkrgb.o rbgtktreeviewcolumn.o rbgtkwidget.o rbgtkvolumebutton.o rbgdkdragcontext.o rbgtkbindingset.o rbgtkbox.o rbgtkfontbutton.o rbgtktoggleaction.o rbgtkalignment.o rbgtkhruler.o rbgtkentry.o rbgtkrecentfilter.o rbgtksizegroup.o rbgtkiconsource.o rbgtkprintoperationpreview.o rbgtktreedragdest.o rbgdkx11.o rbgtkcellrendererprogress.o rbgtktextbuffer.o rbgtkcelllayout.o rbgtkprinter.o rbgtkaccelgroup.o rbgtktextmark.o rbgtkfilesystemerror.o rbgdkcairo.o rbgtkaccelerator.o rbgtkstyle.o rbgtkrecentchooserwidget.o rbgtknotebook.o rbgtkmessagedialog.o rbgtkiconset.o init.o rbgtkbuilder.o rbgtkdrawingarea.o rbgtkvseparator.o rbgtkhbbox.o rbgtkfilefilter.o rbgdkcolor.o rbgtkobject.o rbgtkhbox.o rbgtkimcontext.o rbgtkcellrenderer.o rbgtkpapersize.o rbgtkfilechooser.o rbgtkrc.o rbgtklayout.o rbgdkthreads.o rbgtktexttagtable.o rbgdkkeyval.o rbgtkcellrendererspin.o rbgdkpixbuf.o rbgtkstock.o rbgtkadjustment.o rbgtkborder.o rbgtkcombo.o rbgtkaccelgroupentry.o rbgtkscale.o rbgtkimagemenuitem.o rbgtkfilechooserwidget.o rbgdkatom.o rbgtkiconfactory.o rbgtkactiongroup.o rbgtkvbox.o rbgdkproperty.o rbgtkaboutdialog.o rbgtkfilesel.o rbgtkentrycompletion.o rbgtkbuildable.o rbgtkhandlebox.o
TARGET = gtk2
DLLIB = $(TARGET).so
EXTSTATIC = 
STATIC_LIB = 

BINDIR        = $(bindir)
RUBYCOMMONDIR = $(sitedir)$(target_prefix)
RUBYLIBDIR = /home/simon/.rvm/gems/ruby-1.9.3-p194/gems/gtk2-1.2.1/lib$(target_prefix)
RUBYARCHDIR = /home/simon/.rvm/gems/ruby-1.9.3-p194/gems/gtk2-1.2.1/lib$(target_prefix)
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
	$(ECHO) installing default gtk2 libraries
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
	$(INSTALL_DATA) $(srcdir)/rbgdk.h $(RUBYARCHDIR)
	$(INSTALL_DATA) $(srcdir)/rbgdkconversions.h $(RUBYARCHDIR)
	$(INSTALL_DATA) $(srcdir)/rbgtk.h $(RUBYARCHDIR)
	$(INSTALL_DATA) $(srcdir)/rbgtkconversions.h $(RUBYARCHDIR)
	$(INSTALL_DATA) $(srcdir)/rbgtkmacros.h $(RUBYARCHDIR)

install: install-pc
install-pc:
	if test -n "$(pkgconfigdir)"; then			\
	  $(MAKEDIRS) $(pkgconfigdir);				\
	  $(INSTALL_DATA) ruby-gtk2.pc $(pkgconfigdir);		\
	fi
