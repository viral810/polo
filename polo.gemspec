# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'polo/version'

Gem::Specification.new do |spec|
  spec.name          = "polo"
  spec.version       = Polo::VERSION
  spec.authors       = ["Netto Farah"]
  spec.email         = ["nettofarah@gmail.com"]

  spec.summary       = %q{Bring life back to your development environment with samples from production data.}
  spec.description   = %q{Polo travels through your database and creates sample snapshots so you can work with real world data in development.}
  spec.homepage      = "http://ifttt.github.io"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "activerecord", ">= 3.2"

  spec.add_development_dependency "appraisal"
  spec.add_development_dependency "bundler", "~> 2.1.4"
  spec.add_development_dependency "rake", "~> 13.0.1"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "pry"

  spec.add_development_dependency "sqlite3", "~> 1.4"
end
