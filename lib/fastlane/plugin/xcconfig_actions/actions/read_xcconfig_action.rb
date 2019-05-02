require 'fastlane/action'
require 'json'
require_relative '../helper/xcconfig_actions_helper'

module Fastlane
  module Actions
    module SharedValues
      XCCONFIG_ACTIONS_BUILD_SETTINGS = :XCCONFIG_ACTIONS_BUILD_SETTINGS
    end

    class ReadXcconfigAction < Action
      def self.run(params)
        path = params[:path]
        parent = params[:parent]
        srcroot = params[:srcroot] || Dir.pwd
        target_name = params[:target_name]

        config = read_config(path)

        unless params[:no_resolve]
          parent_config = read_config(parent)

          parent_config["SRCROOT"] = srcroot
          parent_config["TARGET_NAME"] = target_name if target_name

          if Helper::XcconfigActionsHelper.command_exist?("xcodebuild")
            # Set value of XCODE_VERSION_MAJOR not available when reading xcconfigs directly.
            xcode_version = `xcodebuild -version | head -n1 | cut -d' ' -f2 | xargs`.strip
            xcode_version_major_padded = xcode_version.split(".").first.rjust(2, "0") + "00"
            parent_config["XCODE_VERSION_MAJOR"] = xcode_version_major_padded
          end

          resolved_parent_config = resolve_config(parent_config)
          resolved_config = resolve_config(config, parent: resolved_parent_config)

          config = resolved_parent_config.merge(resolved_config)
        end

        Actions.lane_context[SharedValues::XCCONFIG_ACTIONS_BUILD_SETTINGS] = config

        if params[:output_path]
          File.open(params[:output_path], "w") { |f| f.puts(config.to_json) }
        else
          return config
        end
      end

      ###
      # @!group Implementation
      ###

      # Read xcconfig value as a hash.
      #
      # @param [String] filename Xcconfig path.
      # @return [Hash<String,String>] Dictionary of xcconfig values.
      def self.read_config(filename)
        # TODO: If filename starts with <DEVELOPER_DIR>, then need to resolve it first.
        return {} if filename.nil? || !File.exist?(filename)

        # Used to use Xcodeproj::Config.new(filename) here, but it just doesn't do the job,
        # e.g. it resolves $(inherited) incorrectly, allowing it to work within the scope of one file
        # without any parent config.

        xcconfig = Helper::XcconfigActionsHelper.read_xcconfig(filename)
        config = xcconfig[:config]
        includes = xcconfig[:includes]

        # Xcodeproj does not resolve overrides from included files, so do it manually.
        resolved_includes_config = includes.reduce({}) do |resolved_config, include_path|
          resolved_path = resolve_path(include_path, relative_to: filename)
          resolved_config.merge(read_config(resolved_path))
        end

        config.merge(resolved_includes_config)
      end

      # Expand given path in relation to another path.
      #
      # Used to resolved '#include "relative/path.xcconfig"' includes.
      #
      # @param [String] path Path to expand.
      # @param [String] relative_to Parent path to expand in relation to.
      #
      # @return [String] Expanded path.
      def self.resolve_path(path, relative_to:)
        # Absolute or special SDK paths need no resolving.
        return path if path.start_with?("/", "<")

        File.expand_path(File.join(File.dirname(relative_to), path))
      end

      # Resolve xcconfig value, i.e. expand any of the $() variable references.
      #
      # @param [String] value String value to resolve.
      # @param [String] key Key under which this value is defined in xcconfig. This key will be used to pick up values from parent xcconfig.
      # @param [Hash<String,String>] resolved Dictionary of already resolved values.
      # @param [Hash<String,String>] parent Dictionary of parent xcconfig values.
      #
      # @return [String] Resolved value.
      def self.resolve_value(value, key:, resolved: {}, parent: {})
        matches = value.scan(/(\$\([^$\)]*\))/)

        mutable_value = value.dup # Prevent unwanted side-effect of input modification.
        matches.each do |group|
          group.each do |match|
            var_name = match.delete("$()")
            # If inherited, use value from parent config.
            var_value = if var_name == "inherited"
                          parent[key]
                        else
                          resolved[var_name] || parent[var_name]
                        end
            mutable_value.gsub!(match, var_value || "")
            resolved[key] = mutable_value
          end
        end

        # If there are still variables, keep resolving then.
        mutable_value.include?("$(") ? resolve_value(mutable_value, key: key, resolved: resolved, parent: parent) : mutable_value
      end

      # Resolve xcconfig values using parent config.
      #
      # @param [Hash<String,String>] config Current dictionary of values.
      # @param [Hash<String,String>] parent Resolved parent xcconfig values.
      #
      # @return [Hash<String,String>] Resolved xcconfig values.
      def self.resolve_config(config, parent: {})
        config.each do |k, v|
          resolve_value(v, key: k, resolved: config, parent: parent)
        end
        config
      end

      ###
      # @!group Info and Options
      ###

      def self.description
        "Read and resolve contents of xcconfig file and return as JSON"
      end

      def self.authors
        ["Maksym Grebenets"]
      end

      def self.return_value
        "Parse and resolved build settings from xcconfig represented as JSON"
      end

      def self.details
        ""
      end

      def self.category
        :building
      end

      def self.available_options
        [
          FastlaneCore::ConfigItem.new(key: :path,
                                  env_name: "XCCONFIG_ACTIONS_READ_PATH",
                               description: "Path to xcconfig to read",
                                  optional: false,
                                      type: String,
                              verify_block: proc do |value|
                                              UI.user_error!("Couldn't find xcconfig at path: '#{value}'") unless File.exist?(value)
                                            end),
          FastlaneCore::ConfigItem.new(key: :parent,
                                  env_name: "XCCONFIG_ACTIONS_READ_PARENT",
                               description: "Parent xcconfig file to inherit build settings from.\nThis is the xcconfig you'd set on the project level in Xcode",
                                  optional: true,
                                      type: String,
                              verify_block: proc do |value|
                                              UI.user_error!("Couldn't find parent xcconfig at path: '#{value}'") if value && !File.exist?(value)
                                            end),
          FastlaneCore::ConfigItem.new(key: :no_resolve,
                                  env_name: "XCCONFIG_ACTIONS_READ_NO_RESOLVE",
                               description: "Do not resolve variables in xcconfigs and read 'as is'",
                             default_value: false,
                                  optional: true,
                                      type: Boolean),
          FastlaneCore::ConfigItem.new(key: :srcroot,
                                  env_name: "XCCONFIG_ACTIONS_READ_SRCROOT",
                               description: "Value for SRCROOT build setting, default is current working directory",
                                  optional: true,
                                      type: String),
          FastlaneCore::ConfigItem.new(key: :target_name,
                                  env_name: "XCCONFIG_ACTIONS_READ_TARGET_NAME",
                               description: "Value for TARGET_NAME build setting",
                                  optional: true,
                                      type: String),
          FastlaneCore::ConfigItem.new(key: :output_path,
                                  env_name: "XCCONFIG_ACTIONS_READ_OUTPUT_PATH",
                               description: "Output path",
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
