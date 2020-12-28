# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'em-rubyserial/version'

Gem::Specification.new do |spec|
  spec.name          = "wj-em-rubyserial"
  spec.version       = Em::Rubyserial::VERSION
  spec.authors       = ["Bhargav Raut"]
  spec.email         = ["bhargav.r.raut@gmail.com"]
  spec.summary       = %q{EventMachine serial port}
  spec.description   = %q{Refactored to play nice with eventmachine}
  spec.homepage      = "https://github.com/wordjelly/em-rubyserial"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "rubyserial"
  #spec.add_runtime_dependency "eventmachine"

  #spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", "~> 3"
end
