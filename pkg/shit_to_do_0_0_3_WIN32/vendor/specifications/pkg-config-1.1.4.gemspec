# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "pkg-config"
  s.version = "1.1.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Kouhei Sutou"]
  s.date = "2012-08-02"
  s.description = "pkg-config can be used in your extconf.rb to properly detect need libraries for compiling Ruby native extensions"
  s.email = ["kou@cozmixng.org"]
  s.homepage = "https://github.com/rcairo/pkg-config"
  s.licenses = ["LGPLv2+"]
  s.require_paths = ["lib"]
  s.rubyforge_project = "cairo"
  s.rubygems_version = "1.8.25"
  s.summary = "A pkg-config implementation for Ruby"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<test-unit>, [">= 0"])
      s.add_development_dependency(%q<test-unit-notify>, [">= 0"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<bundler>, [">= 0"])
    else
      s.add_dependency(%q<test-unit>, [">= 0"])
      s.add_dependency(%q<test-unit-notify>, [">= 0"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<bundler>, [">= 0"])
    end
  else
    s.add_dependency(%q<test-unit>, [">= 0"])
    s.add_dependency(%q<test-unit-notify>, [">= 0"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<bundler>, [">= 0"])
  end
end
