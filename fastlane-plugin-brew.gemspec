# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'fastlane/plugin/brew/version'

Gem::Specification.new do |spec|
  spec.name          = 'fastlane-plugin-brew'
  spec.version       = Fastlane::Brew::VERSION
  spec.author        = %q{Michael Ruhl}
  spec.email         = %q{michael.ruhl@novatec-gmbh.de}

  spec.summary       = %q{Run Homebrew/Linuxbrew command}
  spec.homepage      = "https://github.com/NovaTecConsulting/fastlane-plugin-brew"
  spec.license       = "MIT"
  spec.requirements << 'You must have Homebrew or Linuxbrew installed'

  spec.files         = Dir["lib/**/*"] + %w(README.md LICENSE)
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'pry'
  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rubocop'
  spec.add_development_dependency 'fastlane', '>= 2.18.3'
end
