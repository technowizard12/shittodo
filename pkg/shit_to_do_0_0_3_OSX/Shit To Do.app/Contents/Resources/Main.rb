# This is a workaround since the .app does not run rubygems properly.
GEM_REQUIRE_PATHS = ["rake-0.9.2.2/lib", "Ascii85-1.0.2/lib", "afm-0.2.0/lib", "pkg-config-1.1.4/lib", "glib2-1.2.1/lib", "atk-1.2.1/lib", "bundler-1.2.3/lib", "cairo-1.12.3/lib", "cri-2.1.0/lib", "gdk_pixbuf2-1.2.1/lib", "pango-1.2.1/lib", "gtk2-1.2.1/lib", "green_shoes-1.1.367/lib", "hashery-2.1.0/lib", "hashery-2.1.0/alt", "nokogiri-1.5.6/lib", "ocra-1.3.0/lib", "ruby-rc4-0.1.5/lib", "ttfunk-1.0.3/lib", "pdf-reader-1.3.1/lib", "prawn-0.12.0/lib", "thor-0.14.6/lib", "releasy_without_github-0.2.3/lib", "shittodo-0.0.3/lib"]

GEM_REQUIRE_PATHS.each do |path|
  $LOAD_PATH.unshift File.expand_path(File.join("../vendor/gems", path), __FILE__)
end

# Directory the .app is inside.
OSX_EXECUTABLE_FOLDER = File.expand_path("../../..", __FILE__)

# Really hacky fudge-fix for something oddly missing in the .app.
class Encoding
  BINARY = UTF_8 = UTF_7 = UTF_16BE = UTF_16LE = UTF_32BE = UTF_32LE = US_ASCII = Encoding.list.first
end

Dir.chdir 'application'
load './shittodo.rb'
