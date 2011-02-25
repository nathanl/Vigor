# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "vigor/version"

Gem::Specification.new do |gem|
  gem.name        = "vigor"
  gem.version     = Vigor::VERSION
  gem.platform    = Gem::Platform::RUBY
  gem.authors     = ["Nathan Long"]
  gem.homepage    = ""
  gem.summary     = %q{Ruby tool to configure Vim}
  gem.description = %q{Ruby tool to output Vim a subset of possible Vim configuration directives using human-readable input}

  gem.rubyforge_project = "vigor"
  gem.add_development_dependency 'rspec', '~>2.5.0'

  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.require_paths = ["lib"]
end
