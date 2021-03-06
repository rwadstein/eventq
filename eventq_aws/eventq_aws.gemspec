# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'eventq_aws/version'

Gem::Specification.new do |spec|
  spec.name          = "eventq_aws"
  spec.version       = EventQ::Amazon::VERSION
  spec.authors       = ["vaughanbrittonsage"]
  spec.email         = ["vaughanbritton@gmail.com"]

  spec.summary       = 'This is the aws implementation for EventQ'
  spec.description   = 'This is the aws implementation for EventQ'
  spec.homepage      = "https://github.com/vaughanbrittonsage/eventq"
  spec.license       = "MIT"

  spec.files         = Dir.glob("{bin,lib}/**/**/**")
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "pry"

  spec.add_dependency 'aws-sdk-core'
  spec.add_dependency 'eventq_base'
  spec.add_dependency 'hash_kit'
end
