module Services
  module Widgets
    class GetWidgetService
      def initialize(:id)
        @id = id
      end

      def call
        # just doing this service call as an example....
        Services::Widgets::GetWidgetsService.new.call.find do |widget|
          widget[:id] == @id
        end
      end
    end
  end
end
