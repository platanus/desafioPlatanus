class ValidationController < ApplicationController
  def index
    ticket = Ticket.find_by(code: params[:code])
    respond_to do |format|
      format.json { render json: ticket.event.name}
    end
  end
end
