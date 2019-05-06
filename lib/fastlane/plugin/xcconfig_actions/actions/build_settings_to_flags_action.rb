require 'fastlane/action'
require_relative '../helper/xcconfig_actions_helper'
require_relative '../helper/xcspec'

module Fastlane
  module Actions
    ActionHelper = Fastlane::Helper::XcconfigActionsHelper
    Xcspec = Fastlane::Helper::Xcspec

    module SharedValues
      XCCONFIG_ACTIONS_BUILD_FLAGS = :XCCONFIG_ACTIONS_BUILD_FLAGS
    end

    class BuildSettingsToFlagsAction < Action
      def self.run(params)
        build_settings = params[:build_settings] || Actions.lane_context[SharedValues::XCCONFIG_ACTIONS_BUILD_SETTINGS]
        UI.user_error!("Missing build settings input") unless build_settings
        xcode = params[:xcode]

        clang_spec = load_tool_spec("Clang*", xcode: xcode)
        swift_spec = load_tool_spec("Swift*", xcode: xcode)
        linker_spec = load_tool_spec("Ld*", xcode: xcode)

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

      def self.load_tool_spec(tool, xcode:)
        core_spec_path = ActionHelper.find_xcspec("CoreBuildSystem*", xcode: xcode)
        standard_spec = Xcspec.new(core_spec_path, id: "com.apple.buildsettings.standard")
        core_spec = Xcspec.new(core_spec_path, id: "com.apple.build-system.core")

        Xcspec.new(
          ActionHelper.find_xcspec(tool, xcode: xcode),
          standard_spec: standard_spec,
          core_spec: core_spec
        )
      end

      ###
      # @!group Info and Options
      ###

      def self.description
        "Map xcconfig build settings to compiler and linker build flags"
      end

      def self.authors
        ["Maksym Grebenets"]
      end

      def self.return_value
        "Build flags dictionary"
      end

      def self.details
        [
          "Build flags keys:",
          "- compiler_flags: CXX compiler flags for clang compiler",
          "- swift_compiler_flags: Compiler flags for Swift compiler",
          "- linker_flags: Linker flags for clang linker (Cxx and Swift)"
        ].join("\n")
      end

      def self.category
        :building
      end

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

      def self.is_supported?(platform)
        [:ios, :mac].include?(platform)
      end
    end
  end
end
