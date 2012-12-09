# -*- encoding: utf-8 -*-
require File.expand_path('../lib/command_deck/version', __FILE__)

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
end
