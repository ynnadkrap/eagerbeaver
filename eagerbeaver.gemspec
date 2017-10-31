# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "eagerbeaver/version"

Gem::Specification.new do |spec|
  spec.name          = "eagerbeaver"
  spec.version       = Eagerbeaver::VERSION
  spec.authors       = ["Danny Park"]
  spec.email         = ["dannypark92@gmail.com"]

  spec.summary       = "summary"
  spec.description   = "description"
  spec.homepage      = "http://github.com/viewthespace/eagerbeaver"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency 'combustion', '~> 0.7.0'
  spec.add_development_dependency 'activerecord'
  spec.add_development_dependency 'pg'
  spec.add_development_dependency "pry-byebug"
end
