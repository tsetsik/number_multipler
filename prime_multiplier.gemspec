# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'prime_multiplier/version'

Gem::Specification.new do |spec|
  spec.name          = 'prime_multiplier'
  spec.version       = PrimeMultiplier::Version
  spec.authors       = ['tsetsik']
  spec.email         = ['tsetsik@gmail.com']

  spec.summary       = %q{prime multipler table for given numbers}
  spec.description   = %q{prime multiplier table for given numbers that ouputs them in the console}
  spec.homepage      = 'https://github.com/tsetsik/prime_multipler'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.8'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'rubocop'
  spec.add_development_dependency 'console_table'
end
