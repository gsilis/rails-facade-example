module Facades
  module Partials
    module Widgets
      class ListFacade
        attr_reader :widgets

        delegate :present?, to: :widgets

        def initialize(widgets: widgets)
          @widgets = widgets || []
        end

        def present?
          @widgets&.present?
        end

        def at_least?(:count)
          @widgets.size >= count
        end

        def most_popular(count: 5)
          sorted_widgets.slice(0, count)
        end

        private
        def sorted_widgets
          @sorted_widgets ||= @widgets.sort do |a, b|
            a[:rating] <=> b[:rating]
          end
        end
      end
    end
  end
end
