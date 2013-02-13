# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "green_shoes"
  s.version = "1.1.367"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["ashbb"]
  s.date = "2012-10-07"
  s.description = "Green Shoes is one of colorful Shoes, written in pure Ruby with Ruby/GTK2."
  s.email = "ashbbb@gmail.com"
  s.executables = ["gshoes"]
  s.extra_rdoc_files = ["LICENSE", "README.md"]
  s.files = ["bin/gshoes", "LICENSE", "README.md"]
  s.homepage = "http://github.com/ashbb/green_shoes"
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.25"
  s.summary = "Green Shoes"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<gtk2>, [">= 0"])
    else
      s.add_dependency(%q<gtk2>, [">= 0"])
    end
  else
    s.add_dependency(%q<gtk2>, [">= 0"])
  end
end
