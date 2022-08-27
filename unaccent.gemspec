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

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end

  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 2.0'
  spec.add_development_dependency 'minitest', '~> 5.0'
end
