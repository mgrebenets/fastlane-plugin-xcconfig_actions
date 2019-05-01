require 'fastlane/action'
require_relative '../helper/xcconfig_actions_helper'

module Fastlane
  module Actions
    class ValidateXcconfigAction < Action
      def self.run(params)
        path = params[:path]
        root_path = params[:root_path]

        # Validate configs recursively.
        validate_xcconfig(path, root_path: root_path, included_paths: [path], level: 0)
      end

      ###
      # @!group Implementation
      ###

      # Validate xcconfig file.
      # @param [String] xcconfig path to xcconfig.
      # @param [String] root_path root path for all xcconfigs validated in this method.
      # @param [Array<String>] list of files included so far, used to detect circular includes.
      # @return [Array<String>] list of issues.
      def self.validate_xcconfig(xcconfig, root_path:, included_paths: [], level: 0)
        require "pathname"

        relative_path = Pathname.new(xcconfig).relative_path_from(Pathname.new(root_path))
        return ["File does not exist or is a directory: #{xcconfig}"] unless File.exist?(xcconfig) && File.file?(xcconfig)

        config = Helper::XcconfigActionsHelper.read_xcconfig(xcconfig)
        includes = config[:includes]

        issues = includes.flat_map { |include_path| validate_include_path(include_path, xcconfig: relative_path) }
        dupes = includes.select { |e| includes.count(e) > 1 }.uniq
        issues << " #{relative_path}: Duplicate includes detected: #{dupes.join('\n')}" unless dupes.nil? || dupes.empty?
        full_paths = includes.map { |path| Pathname.new(File.join(File.dirname(xcconfig), path)).cleanpath }
        common_paths = included_paths & full_paths
        unless common_paths.empty?
          common_paths_string = common_paths.map { |p| "  - #{p}" }.join("\n")
          issues << "#{relative_path}: Circular includes detected, check the following files:\n#{common_paths_string}"
        end

        result = issues.empty? ? "✅" : "❌"
        offset = " " * 4 * level + " └──"
        UI.message("#{offset} #{result} #{relative_path}")

        # If circular includes detected stop the recursion.
        return issues unless common_paths.empty?

        # Recursively validate the rest.
        issues + full_paths.flat_map { |path| validate_xcconfig(path, root_path: root_path, included_paths: included_paths + full_paths, level: level + 1) }
      end

      # Validate xcconfig include path.
      #
      # @param [String] path include path to validate.
      # @param [String] xcconfig path to xcconfig being validated.
      # @return [Array<String>] list of issues.
      def self.validate_include_path(path, xcconfig:)
        issues = []
        issues << "#{xcconfig}: Invalid bottom-up include flow, i.e. use of '..' in include path: #{path}" if path.include?("..")
        issues << "#{xcconfig}: Including another xcconfig 2 or more levels down: #{path}" if path.count("/") > 1
        issues << "#{xcconfig}: Including another xcconfig on the same level: #{path}" if path.count("/") < 1
        issues
      end

      ###
      # @!group Info and Options
      ###

      def self.description
        "Validate xcconfig file"
      end

      def self.authors
        ["Maksym Grebenets"]
      end

      def self.return_value
        "List of validation issues"
      end

      def self.details
        [
          "Validation rules:",
          "- All included files exist",
          "- Include flow is unidirectional, i.e. top-down only",
          "- Files do not include other files on the same level",
          "- Files do not include other files more than 1 level down",
          "- Files do not contain duplicate includes"
        ].join("\n")
      end

      def self.category
        :linting
      end

      def self.available_options
        [
          FastlaneCore::ConfigItem.new(key: :path,
                                  env_name: "XCCONFIG_ACTIONS_VALIDATE_PATH",
                               description: "Path to xcconfig to validate",
                                  optional: false,
                                      type: String,
                              verify_block: proc do |value|
                                              UI.user_error!("Couldn't find xcconfig at path: '#{value}'") unless File.exist?(value)
                                            end),
          FastlaneCore::ConfigItem.new(key: :root_path,
                                  env_name: "XCCONFIG_ACTIONS_VALIDATE_ROOT_PATH",
                               description: "Root path for all xcconfigs validated with this action",
                                  optional: false,
                                      type: String,
                              verify_block: proc do |value|
                                              UI.user_error!("Couldn't find root xcconfig directory: '#{value}'") unless File.exist?(value)
                                            end)
        ]
      end

      def self.is_supported?(platform)
        [:ios, :mac].include?(platform)
      end
    end
  end
end
