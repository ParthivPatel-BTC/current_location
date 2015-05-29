class HomeController < ApplicationController
  def index
    @search = Geocoder.search(request.remote_ip)
    @location = request.location
  end
end
