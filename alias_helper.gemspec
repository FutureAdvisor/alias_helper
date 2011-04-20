# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "alias_helper/version"

Gem::Specification.new do |s|
  s.name        = "alias_helper"
  s.version     = AliasHelper::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Clyde Law"]
  s.email       = ["clyde@futureadvisor.com"]
  s.homepage    = %q{http://github.com/FutureAdvisor/alias_helper}
  s.summary     = %q{Adds methods for retrieving the aliases that are generated by ActiveSupport's alias_method_chain.}
  s.description = %q{For some reason Rails does not appear to easily expose the aliases returned by ActiveSupport's alias_method_chain.  This adds methods for retrieving the aliases that are generated.}
  s.license     = 'MIT'

  s.add_dependency('activesupport', '>= 2.1.0')

  s.rubyforge_project = "alias_helper"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
