# -*- encoding: utf-8 -*-
# stub: pagy 0.6.0 ruby lib

Gem::Specification.new do |s|
  s.name = "pagy".freeze
  s.version = "0.6.0".freeze

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Domizio Demichelis".freeze]
  s.date = "2018-04-22"
  s.description = "Agnostic pagination in plain ruby: it works with any framework, ORM and DB type, with all kinds of collections, even pre-paginated, scopes, Arrays, JSON data... and just whatever you can count. Easy to use and customize, very fast and very light.".freeze
  s.email = ["dd.nexus@gmail.com".freeze]
  s.homepage = "https://github.com/ddnexus/pagy".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.4.21".freeze
  s.summary = "The Ultimate Pagination Ruby Gem".freeze

  s.installed_by_version = "3.4.21".freeze if s.respond_to? :installed_by_version

  s.specification_version = 4

  s.add_development_dependency(%q<bundler>.freeze, ["~> 1.16".freeze])
  s.add_development_dependency(%q<rake>.freeze, ["~> 10.0".freeze])
  s.add_development_dependency(%q<minitest>.freeze, ["~> 5.0".freeze])
  s.add_development_dependency(%q<slim>.freeze, [">= 0".freeze])
  s.add_development_dependency(%q<haml>.freeze, [">= 0".freeze])
  s.add_development_dependency(%q<benchmark-ips>.freeze, [">= 0".freeze])
  s.add_development_dependency(%q<kalibera>.freeze, [">= 0".freeze])
  s.add_development_dependency(%q<memory_profiler>.freeze, [">= 0".freeze])
end
