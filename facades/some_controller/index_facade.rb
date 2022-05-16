module SomeController
  class IndexFacade
    attr_reader :widgets, :announcement

    def initialize(:widgets, :announcement)
      @widgets = Facades::Partials::Widgets::ListFacade.new(widgets)
      @announcement = Facades::Partials::Announcements::ShowFacade.new(announcement)
    end

    # Any methods truly just for the page could go here
  end
end
