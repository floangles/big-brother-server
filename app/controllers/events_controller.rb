class  EventsController < ApplicationController
  # protect_from_forgery with: :exception
  def index
  	@events = Event.all
  end

  def show
  	@pictures = Event.find(params[:id]).pictures.all
  end
end
