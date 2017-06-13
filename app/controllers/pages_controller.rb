class PagesController < ApplicationController
  def home
    @locations = Artist.all.map { |a| a.location }.uniq
  end
end
