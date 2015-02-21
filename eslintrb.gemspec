# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "eslintrb/version"

Gem::Specification.new do |spec|
  spec.name          = "eslintrb"
  spec.version       = Eslintrb::VERSION
  spec.authors       = "Enrique Gonzalez"
  spec.email         = "enriikke@gmail.com"

  spec.summary       = "Ruby wrapper for ESLint."
  spec.description   = "Analyze your JavaScript code using ESLint."
  spec.homepage      = "http://skookum.com"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end

  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.8"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.1"
end
