class PrintController < ApplicationController
  def index
    @events = Event.all
  end

  def details
    @event = Event.find(params[:event_id])
  end
end
