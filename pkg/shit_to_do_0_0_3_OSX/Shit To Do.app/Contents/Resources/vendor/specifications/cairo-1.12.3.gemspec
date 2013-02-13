# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "cairo"
  s.version = "1.12.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Kouhei Sutou"]
  s.date = "2012-12-04"
  s.description = "Ruby bindings for cairo"
  s.email = ["kou@cozmixng.org"]
  s.extensions = ["ext/cairo/extconf.rb"]
  s.extra_rdoc_files = ["README.rdoc"]
  s.files = ["README.rdoc", "ext/cairo/extconf.rb"]
  s.homepage = "http://cairographics.org/rcairo"
  s.licenses = ["Ruby's"]
  s.require_paths = ["lib"]
  s.rubyforge_project = "cairo"
  s.rubygems_version = "1.8.25"
  s.summary = "Ruby bindings for cairo"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<pkg-config>, [">= 0"])
      s.add_development_dependency(%q<bundler>, [">= 0"])
      s.add_development_dependency(%q<test-unit-notify>, [">= 0"])
      s.add_development_dependency(%q<rake-compiler>, [">= 0"])
      s.add_development_dependency(%q<packnga>, [">= 0"])
    else
      s.add_dependency(%q<pkg-config>, [">= 0"])
      s.add_dependency(%q<bundler>, [">= 0"])
      s.add_dependency(%q<test-unit-notify>, [">= 0"])
      s.add_dependency(%q<rake-compiler>, [">= 0"])
      s.add_dependency(%q<packnga>, [">= 0"])
    end
  else
    s.add_dependency(%q<pkg-config>, [">= 0"])
    s.add_dependency(%q<bundler>, [">= 0"])
    s.add_dependency(%q<test-unit-notify>, [">= 0"])
    s.add_dependency(%q<rake-compiler>, [">= 0"])
    s.add_dependency(%q<packnga>, [">= 0"])
  end
end
