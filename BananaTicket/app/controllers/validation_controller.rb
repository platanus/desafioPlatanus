class ValidationController < ApplicationController
  def index
    ticket = Ticket.find_by(code: params[:code])
    respond_to do |format|
      if ticket
        format.json { render json: ticket.event.name}
      else
        raise ActionController::RoutingError.new('Not Found')
      end
    end
  end
end
