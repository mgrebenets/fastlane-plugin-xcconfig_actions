require 'fastlane/action'
require_relative '../helper/xcconfig_actions_helper'

module Fastlane
  module Actions
    module SharedValues
      XCCONFIG_ACTIONS_BUILD_FLAGS = :XCCONFIG_ACTIONS_BUILD_FLAGS
    end

    class BuildSettingsToFlagsAction < Action
      def self.run(params)
        mapping = Helper::XcconfigActionsHelper.load_build_settings_mapping
        flags = {
          "compiler_flags" => read_compiler_flags(build_settings, mapping),
          "swift_compiler_flags" => read_swift_compiler_flags(build_settings, mapping),
          "linker_flags" => read_linker_flags(build_settings, mapping)
        }

        Actions.lane_context[SharedValues::XCCONFIG_ACTIONS_BUILD_FLAGS] = flags

        if params[:output_path]
          File.open(params[:output_path], "w") { |f| f.puts(flags.to_json) }
        else
          return flags
        end
      end

      ###
      # @!group Implementation
      ###

      COMPILER_FLAG_PREFIXES = ["CLANG_WARN_", "GCC_WARN_", "GCC_TREAT_", "CLANG_ENABLE_"]
      COMPILER_FLAG_REGEX = /^(#{COMPILER_FLAG_PREFIXES.join("|")})(.*)/

      def self.read_compiler_flags(build_settings, mapping)
        flags = []
        flags += read_list(build_settings, "GCC_PREPROCESSOR_DEFINITIONS").map { |v| "-D#{v}" }
        flags << read(build_settings, "OTHER_CFLAGS")
        flags << read(build_settings, "WARNING_CFLAGS")
        flags << "-O" + read(build_settings, "GCC_OPTIMIZATION_LEVEL")
        flags << bitcode_flags(build_settings, mapping)

        # Map all flags with known prefixes.
        flags += build_settings.keys.map do |setting|
          match = setting.match(COMPILER_FLAG_REGEX)
          next unless match

          flag_name = match.captures.last.gsub(/^_*/, "").gsub("_", "-").downcase
          map_build_setting(build_settings, setting, mapping, flag_name)
        end.compact

        flags.join(" ")
      end

      def self.read_swift_compiler_flags(build_settings, mapping)
        flags = []
        flags += read_list(build_settings, "SWIFT_ACTIVE_COMPILATION_CONDITIONS").map { |v| "-D #{v}" }
        flags << read(build_settings, "SWIFT_OPTIMIZATION_LEVEL")
        flags << read(build_settings, "OTHER_SWIFT_FLAGS")
        flags << map_build_setting(build_settings, "SWIFT_COMPILATION_MODE", mapping)
        flags << map_build_setting(build_settings, "ENABLE_TESTABILITY", mapping)
        flags << map_build_setting(build_settings, "SWIFT_TREAT_WARNINGS_AS_ERRORS", mapping)
        flags << map_build_setting(build_settings, "SWIFT_SUPPRESS_WARNINGS", mapping)
        flags << bitcode_flags(build_settings, mapping)
        flags.join(" ")
      end

      def self.read_linker_flags(build_settings, mapping)
        flags = []
        flags << read(build_settings, "OTHER_LDFLAGS")
        flags << bitcode_flags(build_settings, mapping)
        flags.join(" ")
      end

      def self.read(build_settings, key, default_value: "")
        build_settings[key] || default_value
      end

      def self.read_list(build_settings, key)
        (build_settings[key] || "").split
      end

      def self.bitcode_flags(build_settings, mapping)
        map_build_setting(build_settings, "ENABLE_BITCODE", mapping)
      end

      # Map build setting to flags.
      #
      # @param [Hash] build_settings Build settings dictionary.
      # @param [String] key Key and name of the build setting to map.
      # @param [String mapping Mapping information.
      # @param [String] flag_name Flag name to use if there's no mapping for this build setting.
      #
      # @return [String] Flags.
      def self.map_build_setting(build_settings, key, mapping, flag_name = nil)
        build_setting_value = read(build_settings, key)
        mapping_info = mapping[key] || flag_name
        return "" unless mapping_info && build_setting_value

        if mapping_info.kind_of?(String)
          flag_for_value(mapping_info, build_setting_value)
        else
          FastlaneCore::UI.user_error!("Mapped value must be either a String or a Hash") unless mapping_info.kind_of?(Hash)
          mapping_info[build_setting_value] || ""
        end
      end

      def self.flag_for_value(flag, value)
        case value
        when "YES_ERROR"
          flag.gsub("-W", "-Werror=")
        when "NO"
          flag.gsub("-W", "-Wno-")
        else
          flag
        end
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
                             default_value: SharedValues::XCCONFIG_ACTIONS_BUILD_SETTINGS,
                              verify_block: proc do |value|
                                              UI.user_error!("Missing build settings") if value.nil?
                                            end),
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
