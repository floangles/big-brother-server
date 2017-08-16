class Api::V1::PicturesController < ApplicationController

	def create
		image = params[:image]
		event_name = params[:event]
		camera_name = params[:camera_name]

		event = Event.find_by(name: event_name)
		event = Event.create!(camera_id: Camera.first.id, name: event_name) unless event
		
		Picture.create(event_id: event.id, image: image)

		# Here I create already the next event because the celerity of HTTP request make an event create twice
		next_event_name = (event_name.to_i + 1).to_s
		next_event_name = "0" + next_event_name if next_event_name.size == 1
		Event.create(camera_id: Camera.first.id, name: next_event_name)

		render json: {status: 'ok'}, status: :ok
	end
		
end