# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "suid"

Gem::Specification.new do |s|
  s.name        = "suid"
  s.version     = SUID::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Danny Burkes"]
  s.email       = ["dburkes@netable.com"]
  s.homepage    = "http://github.com/dburkes/suid"
  s.summary     = %q{Sorta Unique ID}
  s.description = %q{Sorta Unique ID}

  s.files         = Dir['README.md', 'LICENSE', 'lib/**/*']
  s.require_paths = ["lib"]
  s.add_development_dependency('rspec', '2.6.0')
  s.add_development_dependency('rake', '0.8.6')
end
