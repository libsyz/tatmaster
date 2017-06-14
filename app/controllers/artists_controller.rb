class ArtistsController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @artists = Artist.all
    # @studio = Studio.where.not(latitude: nil, longitude: nil)
    @artist2 = Artist.where.not(latitude: nil, longitude: nil)
    @artist2.each do |artist|
      if artist.location == params[:location]
        @hash = Gmaps4rails.build_markers(artist) do |flat, marker|
          marker.lat flat.latitude
          marker.lng flat.longitude
        end
      end
    end
  end


  def show
    @artist = Artist.find(params[:id])
    # @artist2 = Artist.find(params[:location])
    @appointment = Appointment.new
    # @studio = Studio.find(params[:studio_id])
    # @studio_coordinates = { lat: @studio.latitude, lng: @studio.longitude}
    @artist2_coordinates = { lat: @artist.latitude, lng: @artist.longitude}
  end
end
