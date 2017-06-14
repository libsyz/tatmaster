class ArtistsController < ApplicationController
  include ArtistHelper
  skip_before_action :authenticate_user!

  def index
    @artists = Artist.all
  end

  def show
    @artist = Artist.find(params[:id])
    @appointment = Appointment.new
    @time_slots = generate_slots(10, 18)
  end
end
