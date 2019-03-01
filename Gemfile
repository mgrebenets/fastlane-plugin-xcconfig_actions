source('https://rubygems.org')

gemspec

group :development do
  gem "debase"
  gem "pry-coolline"
  gem "ruby-debug-ide"
end

plugins_path = File.join(File.dirname(__FILE__), 'fastlane', 'Pluginfile')
eval_gemfile(plugins_path) if File.exist?(plugins_path)
