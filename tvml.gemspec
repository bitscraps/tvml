# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'TVML/version'

Gem::Specification.new do |spec|
  spec.name          = "tvml"
  spec.version       = TVML::VERSION
  spec.authors       = ["Chris Bielinski"]
  spec.email         = ["chris@shadow.io"]

  spec.summary       = "Ruby library for working with Apple's TVML"
  spec.description   = "Ruby library for working with Apple's TVML built with Builder."
  spec.homepage      = 'https://github.com/chrisb/tvml'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.licenses      = %w(MIT)

  spec.add_dependency 'builder', '~> 3.1'
  spec.add_dependency 'activesupport', '>= 4.1'

  spec.add_development_dependency 'rspec', '~> 3.3'
  spec.add_development_dependency 'simplecov', '~> 0.10'
  spec.add_development_dependency 'bundler', '~> 1.10'
  spec.add_development_dependency 'rake', '~> 10.0'
end
