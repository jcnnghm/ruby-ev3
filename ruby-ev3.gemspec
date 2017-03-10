# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ev3/version'

Gem::Specification.new do |spec|
  spec.name          = "ruby-ev3"
  spec.version       = EV3::VERSION
  spec.authors       = ["Justin Cunningham"]
  spec.email         = ["justin@bulletprooftiger.com"]
  spec.summary       = %q{Gem for controlling the EV3 lego robot.}
  spec.description   = %q{Gem for controlling the EV3 lego robot.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "yard"

  # Connections
  spec.add_development_dependency "libusb"
  spec.add_development_dependency "serialport"
end
