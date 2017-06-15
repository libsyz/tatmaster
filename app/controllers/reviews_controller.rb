class ReviewsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @reviews = Review.all
  end

  def new
    @artist = Artist.find(params[:artist_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    # @review.appointment = Appointment.find(params[:appointment_id])
    @artist = Artist.find(params[:artist_id])
    @review.artist = @artist
    if @review.save
      redirect_to @review.artist
    else
      render :new
    end
  end

  private

  def avg_rating
    @artist = Artist.find(params[:artist_id])
    ratings = []
    @artist.reviews.each do |review|
      ratings << review.rating
    end

    @avg_rating = (ratings.inject(:+)/ratings.count).to_i
    @artist.rating = @avg_rating
    @artist.save
  end

  def review_params
    params.require(:review).permit(:content, :rating)
  end

end
