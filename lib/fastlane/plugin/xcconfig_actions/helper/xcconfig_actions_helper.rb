require 'fastlane_core/ui/ui'

module Fastlane
  UI = FastlaneCore::UI unless Fastlane.const_defined?("UI")

  module Helper
    # Helper module for Xcconfig actions plugin.
    class XcconfigActionsHelper
      # Check if shell command exists.
      # @param [String] cmd Shell command.
      # @return [Boolean] A Boolean indicating whether the shell command exists.
      def self.command_exist?(cmd)
        `which #{cmd} 2>/dev/null`.chomp != ""
      end

      # class methods that you define here become available in your action
      # as `Helper::XcconfigActionsHelper.your_method`
      def self.show_message
        UI.message("Hello from the xcconfig_actions plugin helper!")
      end

      # Read xcconfig and return hash with 'config' and 'includes' entries.
      # 'config' containing the hash-map of resolved variables,
      # 'includes' containing an array of include paths.
      # The config values are not resolved.
      # @param [String] path Xcconfig path.
      # @return [Hash] Dictionary representing xcconfig.
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

      # Find xcspec by name.
      # @param [String] name Xcspec name.
      # @param [String] xcode Path to Xcode app or Xcode version for version of bundled xcspecs, e.g. "10.2".
      # @return [String] Path to xcspec file.
      def self.find_xcspec(name, xcode:)
        search_path = File.exist?(xcode) ? File.join(xcode, "Contents/{Plugins,Developer/Platforms/MacOSX.platform/Developer/Library/Xcode/Specifications}") : File.join(File.dirname(__FILE__), "xcspecs", xcode)

        query = File.join(search_path, "**", name + ".xcspec")
        xcspec = Dir.glob(query, File::FNM_CASEFOLD).first
        UI.user_error!("Can't find xcspec with name: #{name}") unless xcspec && File.exist?(xcspec)
        xcspec
      end
    end
  end
end
