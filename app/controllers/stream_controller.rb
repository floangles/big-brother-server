class  StreamController < ApplicationController
  # protect_from_forgery with: :exception
  def index
  	@stream_url = "http://86.247.45.97/"
  end

end
