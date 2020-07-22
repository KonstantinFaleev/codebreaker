require 'bundler/gem_tasks'
require 'rspec/core/rake_task'
require 'rubocop/rake_task'

RSpec::Core::RakeTask.new(:spec)

RuboCop::RakeTask.new(:rubocop)

task :fasterer do
  system('bundle exec fasterer')
end

task default: %i[lint spec]

task lint: %i[rubocop fasterer]
