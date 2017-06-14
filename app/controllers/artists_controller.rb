class ArtistsController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @artists = Artist.all
    @studio = Studio.where.not(latitude: nil, longitude: nil)
    @hash = Gmaps4rails.build_markers(@flats) do |flat, marker|
      marker.lat flat.latitude
      marker.lng flat.longitude
    end
  end
end

def show
  @artist = Artist.find(params[:id])
    # @appointment = Appointment.new
    @studio = Studio.find(params[:studio_id])
    @studio_coordinates = { lat: @studio.latitude, lng: @studio.longitude}
  end
end
