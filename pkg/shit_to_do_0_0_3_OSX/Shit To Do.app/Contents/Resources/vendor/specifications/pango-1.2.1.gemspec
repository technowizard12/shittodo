# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "pango"
  s.version = "1.2.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["The Ruby-GNOME2 Project Team"]
  s.date = "2013-01-30"
  s.description = "Ruby/Pango is a Ruby binding of pango-1.x."
  s.email = "ruby-gnome2-devel-en@lists.sourceforge.net"
  s.extensions = ["ext/pango/extconf.rb"]
  s.files = ["ext/pango/extconf.rb"]
  s.homepage = "http://ruby-gnome2.sourceforge.jp/"
  s.require_paths = ["lib"]
  s.required_ruby_version = Gem::Requirement.new(">= 1.8.5")
  s.rubygems_version = "1.8.25"
  s.summary = "Ruby/Pango is a Ruby binding of pango-1.x."

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<cairo>, [">= 1.10.0"])
      s.add_runtime_dependency(%q<glib2>, [">= 1.2.1"])
    else
      s.add_dependency(%q<cairo>, [">= 1.10.0"])
      s.add_dependency(%q<glib2>, [">= 1.2.1"])
    end
  else
    s.add_dependency(%q<cairo>, [">= 1.10.0"])
    s.add_dependency(%q<glib2>, [">= 1.2.1"])
  end
end
