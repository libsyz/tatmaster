class ArtistsController < ApplicationController
  def index
    @artists = Artist.group(params[:location])
  end

  def show
    @artist = Artist.find(params[:id])
  end
end
