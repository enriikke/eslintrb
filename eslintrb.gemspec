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
  spec.description   = "Analyze your JavaScript code using ESLint in Ruby."
  spec.homepage      = "http://helloimenrique.com"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end

  spec.bindir        = "bin"
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.8"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.1"

  spec.add_dependency "execjs", "~> 2.3"
end
