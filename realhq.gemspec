# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'realhq/version'

Gem::Specification.new do |spec|
  spec.name          = "realhq"
  spec.version       = Realhq::VERSION
  spec.authors       = ["scottmotte"]
  spec.email         = ["scott@scottmotte.com"]
  spec.description   = %q{Application to RealHQ}
  spec.summary       = %q{Application to RealHQ}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency   "bundler", "~> 1.3"
  spec.add_development_dependency   "rake"
  spec.add_development_dependency   "pry"
  spec.add_development_dependency   "rspec"

  spec.add_dependency               "launchy"
end
