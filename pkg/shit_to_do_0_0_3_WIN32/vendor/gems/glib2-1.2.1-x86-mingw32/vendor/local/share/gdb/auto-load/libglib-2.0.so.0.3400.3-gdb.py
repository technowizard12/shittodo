import sys
import gdb

# Update module path.
dir_ = '/home/kou/work/ruby/ruby-gnome2.win32/glib2/vendor/local/share/glib-2.0/gdb'
if not dir_ in sys.path:
    sys.path.insert(0, dir_)

from glib import register
register (gdb.current_objfile ())
