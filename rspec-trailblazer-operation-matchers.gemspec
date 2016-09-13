# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rspec/trailblazer/operation/matchers/version'

Gem::Specification.new do |spec|
  spec.name          = 'rspec-trailblazer-operation-matchers'
  spec.version       = RSpec::Trailblazer::Operation::Matchers::VERSION
  spec.authors       = ['V.Kolesnikov']
  spec.email         = ['re.vkolesnikov@gmail.com']

  spec.summary       = 'RSpec Trailblazer::Operation matchers'
  spec.description   = 'RSpec Trailblazer::Operation matchers'
  spec.homepage      = 'https://github.com/v-kolesnikov/rspec-trailblazer-operation-matchers'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.require_paths = ['lib']

  spec.add_dependency 'rspec', '~> 3.0'

  spec.add_development_dependency 'bundler', '~> 1.12'
  spec.add_development_dependency 'rake', '~> 10.0'
end
