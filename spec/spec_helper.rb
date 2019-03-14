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

###
# @!group Read Test Helpers
###

def read_config_path(path)
  File.join(RSPEC_ROOT, "fixtures/configs/read", path)
end

# Generic read xcconfig lane test helper.
def read_lane_test(path, options: {})
  path = read_config_path(path)
  # TODO: Add support for bool values.
  args = { "path" => path }.merge(options).map { |k, v| "#{k}: '#{v}'" }.join(", ")
  result = Fastlane::FastFile.new.parse("lane :test do
    read_xcconfig(#{args})
  end").runner.execute(:test)

  yield(JSON.parse(result))
end

# Run test for reading config at path with parent config specified (inheritance tests).
def parent_read_test(path, parent:, &block)
  read_lane_test(path, options: { "parent" => read_config_path(parent) }, &block)
end

# Run basic test for reading config at path.
def basic_read_test(path, &block)
  read_lane_test(path, &block)
end

# Returns name of Xcode project scheme for given xcconfig path.
def scheme_name(read_config_path)
  File.basename(read_config_path, File.extname(read_config_path))
end

# Load Xcode project for scheme matching given xcconfig path.
def project(read_config_path, configuration:)
  FastlaneCore::Project.new(
    project: File.join(RSPEC_ROOT, "fixtures/xcode/xcconfig_actions.xcodeproj"),
    scheme: scheme_name(read_config_path),
    configuration: configuration
  )
end

###
# @!group Validate Test Helpers
###

def validate_config_path(path)
  File.join(RSPEC_ROOT, "fixtures/configs/validate", path)
end

# Generic validate xcconfig lane test helper.
def validate_lane_test(path, root_path: nil)
  path = validate_config_path(path)
  root_path ||= File.dirname(path)

  result = Fastlane::FastFile.new.parse("lane :test do
    validate_xcconfig(
      path: '#{path}',
      root_path: '#{root_path}'
    )
  end").runner.execute(:test)

  yield(result)
end

def validate_test(path, &block)
  validate_lane_test(path, &block)
end
