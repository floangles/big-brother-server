class Api::V1::PicturesController < ApplicationController

	def create
		image = params[:image]
		event_name = params[:event]
		camera_name = params[:camera_name]

		event = Event.find_by(name: event_name)
		event = Event.create(camera_id: Camera.first.id, name: event_name) unless event

		Picture.create(event_id: event.id, image: image)
		render json: {status: 'ok'}, status: :ok
	end
	
	private

end