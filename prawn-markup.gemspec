lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'prawn/markup/version'

Gem::Specification.new do |spec|
  spec.name          = 'prawn-markup'
  spec.version       = Prawn::Markup::VERSION
  spec.authors       = ['Pascal Zumkehr']
  spec.email         = ['zumkehr@puzzle.ch']

  spec.summary       = 'Parse simple HTML markup to include in Prawn PDFs'
  spec.description   = 'Parse simple HTML markup to include in Prawn PDFs'
  spec.homepage      = 'https://github.com/puzzle/prawn-markup'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'nokogiri'
  spec.add_dependency 'prawn'
  spec.add_dependency 'prawn-table'

  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'byebug'
  spec.add_development_dependency 'pdf-inspector'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'rubocop'
  spec.add_development_dependency 'simplecov'
end