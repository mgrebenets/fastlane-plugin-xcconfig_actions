$LOAD_PATH.unshift(File.expand_path('../../lib', __FILE__))

require 'simplecov'

# SimpleCov.minimum_coverage 95
SimpleCov.start

# This module is only used to check the environment is currently a testing env
module SpecHelper
end

require 'fastlane' # to import the Action super class
require 'fastlane/plugin/xcconfig_actions' # import the actual plugin

Fastlane.load_actions # load other actions (in case your plugin calls other actions or shared values)

RSPEC_ROOT = File.dirname(__FILE__)

def config_path(path)
  File.join(RSPEC_ROOT, "fixtures/configs", path)
end

# Generic lane test helper.
def lane_test(path, options: {})
  path = config_path(path)
  # TODO: Add support for bool values.
  args = { "path" => path }.merge(options).map { |k, v| "#{k}: '#{v}'" }.join(", ")
  result = Fastlane::FastFile.new.parse("lane :test do
    read_xcconfig(#{args})
  end").runner.execute(:test)

  yield(JSON.parse(result))
end

# Run test for reading config at path with parent config specified (inheritance tests).
def parent_test(path, parent:, &block)
  lane_test(path, options: { "parent" => config_path(parent) }, &block)
end

# Run basic test for reading config at path.
def basic_test(path, &block)
  lane_test(path, &block)
end

# Returns name of Xcode project scheme for given xcconfig path.
def scheme_name(config_path)
  File.basename(config_path, File.extname(config_path))
end

# Load Xcode project for scheme matching given xcconfig path.
def project(config_path, configuration:)
  FastlaneCore::Project.new(
    project: File.join(RSPEC_ROOT, "fixtures/xcode/xcconfig_actions.xcodeproj"),
    scheme: scheme_name(config_path),
    configuration: configuration
  )
end
