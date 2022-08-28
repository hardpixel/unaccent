# frozen_string_literal: true

require_relative 'lib/unaccent/version'

Gem::Specification.new do |spec|
  spec.name          = 'unaccent'
  spec.version       = Unaccent::VERSION
  spec.authors       = ['Jonian Guveli']
  spec.email         = ['jonian@hardpixel.eu']

  spec.summary       = 'Replace accented characters with unaccented characters'
  spec.description   = 'Replace accented characters with unaccented characters.'
  spec.homepage      = 'https://github.com/hardpixel/unaccent'
  spec.license       = 'MIT'

  spec.files         = Dir['LICENSE.txt', 'README.md', '.yardopts', 'lib/**/*']
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 2.0'
  spec.add_development_dependency 'minitest', '~> 5.0'
  spec.add_development_dependency 'rake', '~> 13.0'
end
