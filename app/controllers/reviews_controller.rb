require 'pry'
class ReviewsController < ApplicationController
  def index
    @reviews = Review.all
  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.appointment = Appointment.find(params[:appointment_id])
    if @review.save
      redirect_to @review.artist
    else
      render :new
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
