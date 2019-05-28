# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'g2crowd/version'

Gem::Specification.new do |spec|
  spec.name          = "g2crowd"
  spec.version       = G2crowd::VERSION
  spec.authors       = ["Lachlan Priest"]
  spec.email         = ["lpriest@g2.com"]

  spec.summary       = 'G2crowd Ruby Client'
  spec.description   = 'G2crowd Ruby Client'
  spec.homepage      = 'https://github.com/g2crowd/g2crowd-rb'
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "json_api_client", "~> 1.11"
  spec.add_development_dependency "irb"
  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 12.3"
  spec.add_development_dependency "minitest", "~> 5.0"
end
