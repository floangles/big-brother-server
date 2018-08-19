class  StreamController < ApplicationController
  # protect_from_forgery with: :exception
  def index
  	@stream_url = "https://included-warthog-2409.dataplicity.io"
  end

end
