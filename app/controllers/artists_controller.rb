class ArtistsController < ApplicationController
  include ArtistHelper
  skip_before_action :authenticate_user!

  def index
    @artists = Artist.all
    @locations = Artist.all.map { |a| a.location }.uniq
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
    @appointment = Appointment.new
    @time_slots = generate_slots(10, 18)
    @artist2_coordinates = { lat: @artist.latitude, lng: @artist.longitude}
  end
end
