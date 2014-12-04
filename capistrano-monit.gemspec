# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'capistrano/monit/version'

Gem::Specification.new do |spec|
  spec.name          = "capistrano-monit"
  spec.version       = Capistrano::Monit::VERSION
  spec.authors       = ["Jiajia Wang"]
  spec.email         = ["jjwang0506@gmail.com"]
  spec.summary       = %q{Capistrano tasks for automatic monit configuration}
  spec.description   = %q{Capistrano tasks for automatic monit configuration}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.require_paths = ["lib"]

  spec.add_dependency "capistrano", ">= 3.1"
  spec.add_dependency "sshkit", ">= 1.2.0"

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"

end
