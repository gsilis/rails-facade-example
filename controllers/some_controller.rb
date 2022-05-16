class SomeController < ApplicationController
  def index
    @facade = SomeController::IndexFacade.new(
      announcement: Services::Announcements::GetAnnouncementsService.new.call,
      widgets: Services::Widgets::GetWidgetsService.new.call
    )
  end

  def show
    @facade = SomeController::ShowFacade.new(
      widget: Services::Widgets::GetWidgetService.new(id: show_params.id).call,
      comments: Services::Comments::GetCommentsForWidgetService.new(widget_id: show_params.id).call
    )
  end

  def show_params
    params.permit(:id).require(:id)
  end
end
