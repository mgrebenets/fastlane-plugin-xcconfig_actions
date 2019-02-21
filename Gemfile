source('https://rubygems.org')

gemspec

group :development do
  gem "pry-coolline"
  gem "ruby-debug-ide"
  gem "debase"
end

plugins_path = File.join(File.dirname(__FILE__), 'fastlane', 'Pluginfile')
eval_gemfile(plugins_path) if File.exist?(plugins_path)
