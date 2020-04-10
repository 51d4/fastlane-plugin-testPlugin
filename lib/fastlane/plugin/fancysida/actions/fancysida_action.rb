require 'fastlane/action'
require_relative '../helper/fancysida_helper'

module Fastlane
  module Actions
    class FancysidaAction < Action
      def self.run(params)
        require "open-uri"

        open("https://66.media.tumblr.com/857b30022420846685a957c77cf9a03c/tumblr_ms9z9hrsBw1rc7ciao1_1280.gif") {|f|
          File.open("sugoii.gif","wb") do |file|
            file.puts f.read
          end
        }

        UI.message("The fancysida plugin is working!")
      end

      def self.description
        "test plugin"
      end

      def self.authors
        ["Sida Nakrošytė"]
      end

      def self.return_value
        # If your method provides a return value, you can describe here what it does
      end

      def self.details
        # Optional:
        "test plugin for a test project"
      end

      def self.available_options
        [
          # FastlaneCore::ConfigItem.new(key: :your_option,
          #                         env_name: "FANCYSIDA_YOUR_OPTION",
          #                      description: "A description of your option",
          #                         optional: false,
          #                             type: String)
        ]
      end

      def self.is_supported?(platform)
        # Adjust this if your plugin only works for a particular platform (iOS vs. Android, for example)
        # See: https://docs.fastlane.tools/advanced/#control-configuration-by-lane-and-by-platform
        #
        # [:ios, :mac, :android].include?(platform)
        true
      end
    end
  end
end
