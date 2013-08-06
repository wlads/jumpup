# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'he_integration/version'

Gem::Specification.new do |spec|
  spec.name          = "he_integration"
  spec.version       = HeIntegration::VERSION
  spec.authors       = ["HE:labs"]
  spec.email         = ["contato@helabs.com.br"]
  spec.description   = %q{A synchronous continuous integration gem.}
  spec.summary       = %q{Integration gem help people that want to do synchronous continuous integration on their ruby projects.}
  spec.homepage      = "https://github.com/Helabs/integration"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.required_rubygems_version = "1.8.0"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"

  spec.add_runtime_dependency('hpricot')
end
