# frozen_string_literal: true

require_relative 'lib/rubocop/packaging/version'

Gem::Specification.new do |spec|
  spec.name          = 'rubocop-packaging'
  spec.version       = RuboCop::Packaging::VERSION
  spec.authors       = ['Utkarsh Gupta']
  spec.email         = ['utkarsh@debian.org']
  spec.license       = 'MIT'
  spec.homepage      = 'https://github.com/utkarsh2102/rubocop-packaging'
  spec.summary       = 'Automatic downstream compatability checking tool for Ruby code'
  spec.description   = <<~DESCRIPTION
    A collection of RuboCop cops to check for downstream compatability issues in the
    Ruby code.
  DESCRIPTION

  spec.metadata['homepage_uri']    = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/utkarsh2102/rubocop-packaging'

  spec.files         = Dir['lib/**/*', 'LICENSE', 'README.md']
  spec.require_paths = ['lib']

  spec.required_ruby_version = Gem::Requirement.new('>= 2.3.0')

  spec.add_runtime_dependency 'rubocop'
end
