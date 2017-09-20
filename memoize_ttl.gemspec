# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'memoize_ttl/version'

Gem::Specification.new do |spec|
  spec.name          = "memoize_ttl"
  spec.version       = MemoizeTtl::VERSION
  spec.authors       = ["Grant Gongaware"]
  spec.email         = ["grant@telmate.com"]
  spec.summary       = %q{Simple memoize with an expiration time (time-to-live).}
  spec.description   = %q{Reusable module to extend named memoized blocks with an expiration time.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
