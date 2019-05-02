$LOAD_PATH.unshift(File.expand_path('../lib', __dir__))

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

def fixture_path(path)
  File.join(RSPEC_ROOT, "fixtures", path)
end

def config_path(path)
  fixture_path(File.join("configs", path))
end

def read_config_path(path)
  config_path(File.join("read", path))
end

# Generic read xcconfig lane test helper.
def read_lane_test(path, options: {})
  path = read_config_path(path)
  # TODO: Add support for bool values.
  args = { "path" => path }.merge(options).map { |k, v| "#{k}: '#{v}'" }.join(", ")
  config = Fastlane::FastFile.new.parse("lane :test do
    read_xcconfig(#{args})
  end").runner.execute(:test)

  expect(Fastlane::Actions.lane_context[Fastlane::Actions::SharedValues::XCCONFIG_ACTIONS_BUILD_SETTINGS]).to eq(config)
  yield(config)
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

def build_settings_to_flags_test(build_settings: nil, xcode: nil, output_path: nil, &block)
  build_settings_arg = build_settings ? "build_settings: #{build_settings}," : ""
  xcode_arg = xcode ? "xcode: '#{xcode}'," : ""
  output_path_arg = output_path ? "output_path: '#{output_path}'," : ""

  result = Fastlane::FastFile.new.parse("lane :test do
    build_settings_to_flags(
      #{build_settings_arg}
      #{xcode_arg}
      #{output_path_arg}
    )
  end").runner.execute(:test)

  yield(result) if block
end
