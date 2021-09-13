# frozen_string_literal: true
# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "asciidocsy/version"

Gem::Specification.new do |spec|
  spec.bindir        = "bin"
  spec.executables   = ["adxy"]
  spec.require_paths = ["lib"]

  spec.name          = "asciidocsy-jekyll-theme"
  spec.version       = AsciiDocsy::VERSION
  spec.authors       = ["Brian Dominick"]
  spec.email         = ["badominick@gmail.com"]

  spec.summary       = "A Jekyll theme and executable (adxy) for building tech docs."
  spec.homepage      = "https://asciidocsy.netlify.app/docs/theme"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r!^(lib|_docs|_data|assets|_sass|LICENSE|_config\.yml)!i) }

  spec.add_runtime_dependency "jekyll", "~> 4.2"
  spec.add_development_dependency "bundler", "~> 2.2"
  spec.add_development_dependency "rake", "~> 12.3"
end