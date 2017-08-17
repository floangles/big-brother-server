class  EventsController < ApplicationController
  # protect_from_forgery with: :exception
  def index
  	@events = Event.order(:created_at).select{|event| event.pictures.count > 0}
  end

  def show
  	event = Event.find(params[:id])  	
  	@video = Picture.first
  end

  def destroy
  	Event.find(params[:id]).destroy
  	redirect_to events_path
  end
end
