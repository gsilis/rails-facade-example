module Facades
  module Partials
    module Announcements
      class ShowFacade
        def initialize(:announcement)
          @announcement = announcement || {}
        end

        def present?
          @announcement.present?
        end

        def important?
          @announcement[:priority] == 'important'
        end
      end
    end
  end
end
