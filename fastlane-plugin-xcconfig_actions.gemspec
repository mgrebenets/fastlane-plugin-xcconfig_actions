lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'fastlane/plugin/xcconfig_actions/version'

Gem::Specification.new do |spec|
  spec.name          = 'fastlane-plugin-xcconfig_actions'
  spec.version       = Fastlane::XcconfigActions::VERSION
  spec.author        = 'Maksym Grebenets'
  spec.email         = 'maksym.grebenets@cba.com.au'

  spec.summary       = 'Adds actions to fastlane to work with xcconfig files'
  spec.homepage      = "https://github.com/mgrebenets/fastlane-plugin-xcconfig_actions"
  spec.license       = "MIT"

  spec.files         = Dir["lib/**/*"] + %w(README.md LICENSE)
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  # Don't add a dependency to fastlane or fastlane_re
  # since this would cause a circular dependency

  # spec.add_dependency 'your-dependency', '~> 1.0.0'

  spec.add_dependency('nokogiri-plist')

  spec.add_development_dependency('bundler')
  spec.add_development_dependency('coveralls')
  spec.add_development_dependency('fastlane', '>= 2.116.1')
  spec.add_development_dependency('pry')
  spec.add_development_dependency('rake')
  spec.add_development_dependency('rspec')
  spec.add_development_dependency('rspec_junit_formatter')
  spec.add_development_dependency('rubocop', '~> 0.56.0')
  spec.add_development_dependency('rubocop-require_tools')
  spec.add_development_dependency('simplecov')
  spec.add_development_dependency('terminal-table')
  spec.add_development_dependency('yard')
end
