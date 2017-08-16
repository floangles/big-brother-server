class  StreamController < ApplicationController
  # protect_from_forgery with: :exception
  def index
  	@stream_url = "https://silicious-sponge-1748.dataplicity.io/"
  end

end
