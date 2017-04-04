module Fastlane
  module Helper
    class BrewHelper
      # class methods that you define here become available in your action
      # as `Helper::BrewHelper.your_method`
      #
      def self.show_message
        UI.message("Hello from the brew plugin helper!")
      end
    end
  end
end
