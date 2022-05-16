module Facades
  module Partials
    module Widgets
      class ItemFacade
        attr_reader :widget

        def initialize(:widget)
          @widget = widget
        end

        def rating
          "#{widget[:rating]} / 5"
        end
      end
    end
  end
end
