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
          # TODO: Add Swift frontend flags support.
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
      # @!group Common Flags
      ###

      COMMON_BUILD_SETTINGS = [
        "ENABLE_BITCODE",
        "ENABLE_TESTABILITY",
        "CLANG_ENABLE_CODE_COVERAGE",
        "GCC_GENERATE_DEBUGGING_SYMBOLS"
      ]

      def self.common_flags(build_settings, mapping, tool:)
        COMMON_BUILD_SETTINGS.map do |s|
          map_build_setting(build_settings, s, mapping, tool: tool)
        end
      end

      ###
      # @!group CXX Flags
      ###

      CXX_COMPILER = "cxx"

      def self.read_compiler_flags(build_settings, mapping)
        flags = []

        flags += common_flags(build_settings, mapping, tool: CXX_COMPILER)
        flags += objc_flags(build_settings, mapping)

        flags += read_list(build_settings, "GCC_PREPROCESSOR_DEFINITIONS").map { |v| "-D#{v}" }
        flags << "-O" + read(build_settings, "GCC_OPTIMIZATION_LEVEL")
        flags << read(build_settings, "WARNING_CFLAGS")
        flags << read(build_settings, "OTHER_CFLAGS")
        flags += cxx_warning_flags(build_settings, mapping)

        flags.join(" ")
      end

      def self.objc_flags(build_settings, mapping)
        ["OBJC_ARC", "OBJC_WEAK"].map do |name|
          map_build_setting(build_settings, "CLANG_ENABLE_#{name}", mapping, tool: CXX_COMPILER, flag_name: name.downcase)
        end
      end

      def self.cxx_warning_flags(build_settings, mapping)
        prefixes = ["CLANG_WARN_", "GCC_WARN_", "GCC_TREAT_"]
        regex = /^(#{prefixes.join("|")})(.*)/

        build_settings.keys.map do |s|
          match = s.match(regex)
          next unless match

          flag_name = match.captures.last.gsub(/^_*/, "").gsub("_", "-").downcase
          map_build_setting(build_settings, s, mapping, tool: CXX_COMPILER, flag_name: flag_name)
        end.compact
      end

      ###
      # @!group Swift Compiler Flags
      ###

      SWIFT_COMPILER = "swiftc"

      def self.read_swift_compiler_flags(build_settings, mapping)
        flags = []

        flags += common_flags(build_settings, mapping, tool: SWIFT_COMPILER)
        flags += swift_flags(build_setting, mapping)

        flags += read_list(build_settings, "SWIFT_ACTIVE_COMPILATION_CONDITIONS").map { |v| "-D #{v}" }
        flags << read(build_settings, "SWIFT_OPTIMIZATION_LEVEL")
        flags << read(build_settings, "OTHER_SWIFT_FLAGS")

        flags.join(" ")
      end

      def swift_flags(build_settings, mapping)
        build_settings.keys.map do |s|
          map_build_setting(build_settings, s, mapping, tool: SWIFT_COMPILER)
        end
      end

      ###
      # !@group Linker Flags
      ###

      LINKER = "linker"

      def self.read_linker_flags(build_settings, mapping)
        flags = []
        flags += common_flags(build_settings, mapping, tool: LINKER)
        flags << read(build_settings, "OTHER_LDFLAGS")

        flags.join(" ")
      end

      ###
      # @!group Helpers
      ###

      def self.read(build_settings, key, default_value: "")
        build_settings[key] || default_value
      end

      def self.read_list(build_settings, key)
        (build_settings[key] || "").split
      end

      # Map build setting to flags.
      #
      # @param [Hash] build_settings Build settings dictionary.
      # @param [String] key Key and name of the build setting to map.
      # @param [Hash] mapping Mapping information.
      # @param [String] tool Name of the tool to use for mapping.
      # @param [String] flag_name Flag name to use if there's no mapping for this build setting.
      #
      # @return [String] Flags.
      def self.map_build_setting(build_settings, key, mapping, tool:, flag_name: nil)
        build_setting_value = read(build_settings, key)
        mapping_info = mapping[key] || flag_name
        return "" unless mapping_info && !mapping_info.empty? && build_setting_value && !build_setting.empty?

        if mapping_info.kind_of?(String)
          # CXX compiler is the default tool.
          warning_flag_for_value(mapping_info, build_setting_value)
        else
          FastlaneCore::UI.user_error!("Mapped value must be either a String or a Hash") unless mapping_info.kind_of?(Hash)
          # Here again, under YES/NO/... value we can have either a string value or another hash with tool-specific values.
          mapping_value = mapping_info[build_setting_value] || ""
          if mapping_value.kind_of(String)
            mapping_value
          else
            FastlaneCore::UI.user_error!("Unsupported type of mapping for #{key}[#{build_setting_value}]") unless mapping_value.kind_of?(Hash)
            # Pick the mapping value for specified tool.
            mapping_value[tool] || ""
          end
        end
      end

      def self.warning_flag_for_value(flag, value)
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
