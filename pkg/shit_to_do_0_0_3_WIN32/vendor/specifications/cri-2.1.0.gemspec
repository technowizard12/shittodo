# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "cri"
  s.version = "2.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Denis Defreyne"]
  s.date = "2012-01-16"
  s.description = "Cri allows building easy-to-use commandline interfaces with support for subcommands."
  s.email = "denis.defreyne@stoneship.org"
  s.extra_rdoc_files = ["ChangeLog", "LICENSE", "README.md", "NEWS.md"]
  s.files = ["ChangeLog", "LICENSE", "README.md", "NEWS.md"]
  s.homepage = "http://stoneship.org/software/cri/"
  s.rdoc_options = ["--main", "README.md"]
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.25"
  s.summary = "a library for building easy-to-use commandline tools"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
