Gem::Specification.new do |spec|
  spec.name          = 'moiscot-coffee'
  spec.version       = '0.0.8'
  spec.authors       = 'Paulo McNally'
  spec.email         = ['paulomcnally@gmail.com']
  spec.description   = %q{Lita handler delivering coffee assignation}
  spec.summary       = %q{MOi Solutions handler delivering coffee assignation}
  spec.homepage      = 'https://github.com/moi-team/moiScot-coffee'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'lita', '~> 4.0', '>= 4.0.4'

  spec.add_development_dependency 'bundler', '~> 1.7', '>= 1.7.6'
  spec.add_development_dependency 'rake', '~> 10.4.2', '>= 10.4.2'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'rspec-expectations'
  spec.add_development_dependency 'rspec-mocks'
  spec.add_development_dependency 'simplecov', '~> 0.9.1', '>= 0.9.1'
  spec.add_development_dependency 'coveralls', '~> 0.7.2', '>= 0.7.2'

  spec.metadata = { 'lita_plugin_type' => 'handler' }
end
