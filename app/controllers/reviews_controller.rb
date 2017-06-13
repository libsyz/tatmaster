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

  def review_params
    params.require(:review).permit(:content, :rating)
  end

end
