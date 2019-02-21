require 'fastlane/action'
require 'json'
require 'xcodeproj'
require_relative '../helper/xcconfig_actions_helper'

module Fastlane
  module Actions
    class ReadXcconfigAction < Action
      def self.run(params)
        path = params[:path]
        parent = params[:parent]
        srcroot = params[:srcroot] || Dir.pwd
        target_name = params[:target_name]

        config = read_config(path)

        if params[:no_resolve]
          json = config.to_json
        else
          parent_config = read_config(parent)

          parent_config["SRCROOT"] = srcroot
          parent_config["TARGET_NAME"] = target_name if target_name

          resolved_parent_config = resolve_config(parent_config)
          resolved_config = resolve_config(config, parent: resolved_parent_config)

          json = resolved_parent_config.merge(resolved_config).to_json
        end

        if params[:output_path]
          File.open(params[:output_path], "w") { |f| f.puts(json) }
        else
          return json
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

        # Get rid of comments and blank lines.
        contents = File.read(filename).gsub(%r{\s*//.*$}, "").gsub(/^$\n/, "")
        # Collect all include statements.
        includes_regex = /^\s*#include\s*"(.*)"$/
        includes = contents.scan(includes_regex).flatten
        # Get rid of include statements (makes it easier).
        contents = contents.gsub(includes_regex, "")
        # Collect all variable assignments.
        config = contents.scan(/^\s*([^=]*)=(.*)$/).reduce({}) do |acc, e|
          k = e[0].strip
          v = e[1].strip
          acc.merge({ k => v })
        end

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

        matches.each do |group|
          group.each do |match|
            var_name = match.delete("$()")
            # If inherited, use value from parent config.
            var_value = if var_name == "inherited"
                          parent[key]
                        else
                          resolved[var_name] || parent[var_name]
                        end
            value.gsub!(match, var_value || "")
            resolved[key] = value
          end
        end

        # If there are still variables, keep resolving then.
        value.include?("$(") ? resolve_value(value, key: key, resolved: resolved, parent: parent) : value
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

      def self.available_options
        [
          FastlaneCore::ConfigItem.new(key: :path,
                                  env_name: "XCCONFIG_ACTIONS_PATH",
                               description: "Path to xcconfig to read",
                                  optional: false,
                                      type: String,
                              verify_block: proc do |value|
                                              UI.user_error!("Couldn't find xcconfig at path: '#{value}'") unless File.exist?(value)
                                            end),
          FastlaneCore::ConfigItem.new(key: :parent,
                                  env_name: "XCCONFIG_ACTIONS_PARENT",
                               description: "Parent xcconfig file to inherit build settings from.\nThis is the xcconfig you'd set on the project level in Xcode",
                                  optional: true,
                                      type: String,
                              verify_block: proc do |value|
                                              UI.user_error!("Couldn't find parent xcconfig at path: '#{value}'") if value && !File.exist?(value)
                                            end),
          FastlaneCore::ConfigItem.new(key: :no_resolve,
                                  env_name: "XCCONFIG_ACTIONS_NO_RESOLVE",
                               description: "Do not resolve variables in xcconfigs and read 'as is'",
                             default_value: false,
                                  optional: true,
                                      type: Boolean),
          FastlaneCore::ConfigItem.new(key: :srcroot,
                                  env_name: "XCCONFIG_ACTIONS_SRCROOT",
                               description: "Value for SRCROOT build setting, default is current working directory",
                                  optional: true,
                                      type: String),
          FastlaneCore::ConfigItem.new(key: :target_name,
                                  env_name: "XCCONFIG_ACTIONS_TARGET_NAME",
                               description: "Value for TARGET_NAME build setting",
                                  optional: true,
                                      type: String),
          FastlaneCore::ConfigItem.new(key: :output_path,
                                  env_name: "XCCONFIG_ACTIONS_OUTPUT_PATH",
                               description: "Output path",
                                  optional: true,
                                      type: String)
        ]
      end

      def self.is_supported?(platform)
        true
      end
    end
  end
end
