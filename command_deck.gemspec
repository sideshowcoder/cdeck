# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "command_deck/version"

Gem::Specification.new do |gem|
  gem.authors       = ["Philipp Fehre"]
  gem.email         = ["philipp.fehre@googlemail.com"]
  gem.description   = %q{Commandline based slide deck}
  gem.summary       = %q{Display slides on the comamnd line}
  gem.homepage      = "https://github.com/sideshowcoder/command_deck"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "command_deck"
  gem.require_paths = ["lib"]
  gem.version       = CommandDeck::VERSION
  
  gem.add_dependency "ruby-terminfo"
  gem.add_dependency "thor"
    
  gem.add_development_dependency "rspec"
  gem.add_development_dependency "pry"
 
end
