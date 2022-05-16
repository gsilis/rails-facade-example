module SomeController
  class ShowFacade
    attr_reader :widget, :comments

    def initialize(:widget, :comments)
      @widget = Facades::Partials::Widgets::ItemFacade.new(widget)
      @comments = Facades::Partials::Commnets::ListFacade.new(comments)
    end

    # Any methods truly for the page could go here
  end
end
