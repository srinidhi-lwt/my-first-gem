
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "sri_first_gem/version"

Gem::Specification.new do |spec|
  spec.name          = "sri_first_gem"
  spec.version       = SriFirstGem::VERSION
  spec.authors       = ["Srinidhi G S"]
  spec.email         = ["srini.satti@gmail.com"]

  spec.summary       = %q{My First Gem - Srinidhi}
  spec.description   = %q{This is my first gem}
  spec.homepage      = "http://www.techenthu.in"
  spec.license       = "MIT"

  spec.files         = ["README.md", "lib/sri_first_gem.rb", "lib/sri_first_gem/version.rb"]
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
