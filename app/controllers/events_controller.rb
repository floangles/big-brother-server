class  EventsController < ApplicationController
  # protect_from_forgery with: :exception
  def index
  	@events = Event.order(:created_at).select{|event| event.pictures.count > 0}
  end

  def show
  	event = Event.find(params[:id])
  	@pictures = event.pictures.select{|a| File.extname(a.image_url) == '.jpg'}
  	@video = event.pictures.select{|a| File.extname(a.image_url) != '.jpg'}.first
  end
end
