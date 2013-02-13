# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "shittodo"
  s.version = "0.0.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Simon Orr"]
  s.date = "2013-02-13"
  s.description = "Fixes HHMS printouts for Harker students"
  s.email = ["simon@simonorrstudio.com"]
  s.executables = ["shittodo"]
  s.files = ["bin/shittodo"]
  s.require_paths = ["lib"]
  s.rubyforge_project = "[none]"
  s.rubygems_version = "1.8.25"
  s.summary = "Fixes HHMS printouts for Harker students"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
