require 'fastlane_core/ui/ui'

module Fastlane
  UI = FastlaneCore::UI unless Fastlane.const_defined?("UI")

  module Helper
    class XcconfigActionsHelper
      # Check if shell command exists.
      def self.command_exist?(cmd)
        `which #{cmd} 2>/dev/null`.chomp != ""
      end

      # class methods that you define here become available in your action
      # as `Helper::XcconfigActionsHelper.your_method`
      #
      def self.show_message
        UI.message("Hello from the xcconfig_actions plugin helper!")
      end

      # Read xcconfig and return hash with 'config' and 'includes' entries.
      # 'config' containing the hash-map of resolved variables,
      # 'includes' containing an array of include paths.
      # The config values are not resolved.
      def self.read_xcconfig(path)
        # Get rid of comments and blank lines.
        contents = File.read(path).gsub(%r{\s*//.*$}, "").gsub(/^$\n/, "")
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

        # Return.
        {
          config: config,
          includes: includes
        }
      end

      # Load build settings mapping.
      def self.load_build_settings_mapping
        YAML.load_file(File.join(File.dirname(__FILE__), "build_settings_mapping.yml"))
      end
    end
  end
end
