# -*- encoding: utf-8 -*-
require File.expand_path('../lib/texthelpers/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Christian Meichtry"]
  gem.email         = ["chris@atelier-agile.ch"]
  gem.description   = %q{Helpers for I18n'zed Rails apps}
  gem.summary       = %q{Simple helper methods to display text and titles with **_locale** database field names.}
  gem.homepage      = ""
  
  gem.add_dependency('bluecloth', '>= 2.0.0')
  
  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "texthelpers"
  gem.require_paths = ["lib"]
  gem.version       = Texthelpers::VERSION
end
