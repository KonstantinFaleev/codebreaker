lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require_relative 'lib/codebreaker/version'

Gem::Specification.new do |spec|
  spec.name          = 'codebreaker'
  spec.version       = Codebreaker::VERSION
  spec.authors       = ['Konstantin']
  spec.email         = ['konstantin.faleev@gmail.com']

  spec.summary       = 'Codebreaker'
  spec.description   = 'Codebreaker gem'
  spec.homepage      = 'https://github.com/KonstantinFaleev/codebreaker'
  spec.license       = 'MIT'
  spec.required_ruby_version = Gem::Requirement.new('>= 2.6.3')

  spec.metadata['homepage_uri'] = spec.homepage

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir = 'exe'
  spec.executables = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }

  spec.require_paths = ['lib']

  spec.add_development_dependency 'fasterer', '~>0.8'
  spec.add_development_dependency 'rake', '~>13.0'
  spec.add_development_dependency 'rspec', '~>3.9'
  spec.add_development_dependency 'rubocop', '~>0.85'
  spec.add_development_dependency 'rubocop-rspec', '~>1.41'
  spec.add_development_dependency 'simplecov', '~>0.18'
  spec.add_development_dependency 'rspec_file_chef'
end
