module Fastlane
  module Actions
    class BrewAction < Action
      def self.run(params)
        Actions.sh("which brew", log: false, error_callback: proc do |error_output|
          UI.user_error!("Homebrew/Linuxbrew is not installed")
        end)

        UI.command("brew #{params[:command]}")
        FastlaneCore::CommandExecutor.execute(command: 'env -i HOME="$HOME" TERM="$TERM" LC_CTYPE="${LC_ALL:-${LC_CTYPE:-$LANG}}" PATH="$PATH" USER="$USER" brew ' + params[:command],
                                              print_all: true,
                                              print_command: false)
      end

      #####################################################
      # @!group Documentation
      #####################################################

      def self.description
        "Run Homebrew/Linuxbrew command"
      end

      def self.details
        'Example: brew(command:"install imagemagick")'
      end

      def self.available_options
        [
          FastlaneCore::ConfigItem.new(key: :command,
                                       description: "Brew command to be executed",
                                       optional: false,
                                       is_string: true)
        ]
      end

      def self.example_code
        [
          'brew(command:"install imagemagick")'
        ]
      end

      def self.authors
        ["Michael Ruhl"]
      end

      def self.is_supported?(platform)
        true
      end
    end
  end
end
