require 'fastlane/action'
require_relative '../helper/xcconfig_actions_helper'
require_relative '../helper/xcspec'

module Fastlane
  module Actions
    # Alias for helper class.
    ActionHelper = Fastlane::Helper::XcconfigActionsHelper
    # Alias for Xcspec class.
    Xcspec = Fastlane::Helper::Xcspec

    module SharedValues
      # Key for accessing build flags shared value in lane context.
      XCCONFIG_ACTIONS_BUILD_FLAGS = :XCCONFIG_ACTIONS_BUILD_FLAGS
    end

    # Action to map build settings to build flags.
    class BuildSettingsToFlagsAction < Action
      # Run action.
      # @param [Hash] params Action parameters.
      # @return [Hash] Build flags.
      def self.run(params)
        build_settings = params[:build_settings] || Actions.lane_context[SharedValues::XCCONFIG_ACTIONS_BUILD_SETTINGS]
        UI.user_error!("Missing build settings input") unless build_settings
        xcode = params[:xcode]

        # TODO: Add support for com.apple.compilers.llvm.clang.1_0.analyzer tool.
        clang_spec = load_complete_spec("Clang*", xcode: xcode)
        swift_spec = load_complete_spec("Swift*", xcode: xcode)
        linker_spec = load_complete_spec("Ld*", xcode: xcode)

        clang_mapping = clang_spec.map_build_settings(build_settings)
        swift_mapping = swift_spec.map_build_settings(build_settings)
        linker_mapping = linker_spec.map_build_settings(build_settings)

        flags = {
          "compiler_flags" => clang_mapping.flags,
          "swift_compiler_flags" => swift_mapping.flags,
          "linker_flags" => [
            linker_mapping.flags,
            linker_mapping.linker_flags,
            clang_mapping.linker_flags,
            swift_mapping.linker_flags
          ].reject(&:empty?).join(" ")
        }

        Actions.lane_context[SharedValues::XCCONFIG_ACTIONS_BUILD_FLAGS] = flags

        if params[:output_path]
          File.open(params[:output_path], "w") { |f| f.puts(flags.to_json) }
        else
          return flags
        end
      end

      ###
      # @!group Xcspecs
      ###

      # Load complete spec.
      # @param [String] name Name of the xcspec.
      # @param [String] xcode Path to or version of Xcode.
      # @return [Xcspec] Xcspec that includes Core Build System options.
      def self.load_complete_spec(name, xcode:)
        Xcspec.new(
          ActionHelper.find_xcspec(name, xcode: xcode),
          core_build_system_spec: load_spec("CoreBuildSystem*", xcode: xcode)
        )
      end

      # Load xcspec.
      # @param [String] name Spec name.
      # @param [String] xcode Path to or version of Xcode.
      # @return [Xcspec] Loaded xcspecs.
      def self.load_spec(name, xcode:)
        spec_path = ActionHelper.find_xcspec(name, xcode: xcode)
        Xcspec.new(spec_path)
      end

      ###
      # @!group Info and Options
      ###

      # Plugin action description.
      def self.description
        "Map xcconfig build settings to compiler and linker build flags"
      end

      # Plugin action authors.
      def self.authors
        ["Maksym Grebenets"]
      end

      # Plugin action return value.
      def self.return_value
        "Build flags dictionary"
      end

      # Plugin action details.
      def self.details
        [
          "Build flags keys:",
          "- compiler_flags: CXX compiler flags for clang compiler",
          "- swift_compiler_flags: Compiler flags for Swift compiler",
          "- linker_flags: Linker flags for clang linker (Cxx and Swift)"
        ].join("\n")
      end

      # Plugin action category.
      def self.category
        :building
      end

      # Plugin action available options.
      def self.available_options
        [
          FastlaneCore::ConfigItem.new(key: :build_settings,
                                  env_name: "XCCONFIG_ACTIONS_BUILD_FLAGS_BUILD_SETTINGS",
                               description: "Build settings to convert to build flags",
                                  optional: true,
                                      type: Hash,
                              verify_block: proc do |value|
                                              UI.user_error!("Missing build settings") if value.nil?
                                            end),
          FastlaneCore::ConfigItem.new(key: :xcode,
                                  env_name: "XCCONFIG_ACTIONS_BUILD_FLAGS_XCODE",
                               description: "Xcode version of path to Xcode.app",
                                  optional: true,
                             default_value: "10.2",
                                      type: String),
          FastlaneCore::ConfigItem.new(key: :output_path,
                                  env_name: "XCCONFIG_ACTIONS_BUILD_FLAGS_OUTPUT_PATH",
                               description: "Output path to save build settings JSON",
                                  optional: true,
                                      type: String)
        ]
      end

      # Check if platform is supported by the action.
      # @param [Symbol] platform Platform to check.
      # @return [Boolean] A Boolean indicating whether the platform is supported by the action.
      def self.is_supported?(platform)
        [:ios, :mac].include?(platform)
      end
    end
  end
end
