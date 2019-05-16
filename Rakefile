require 'bundler/gem_tasks'

require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new

require 'rubocop/rake_task'
RuboCop::RakeTask.new(:rubocop)

require 'coveralls/rake/task'
Coveralls::RakeTask.new

task(default: [:spec, :rubocop])
