class AppointmentsController < ApplicationController
  def new
    @appointment = Appointment.new
  end

  def create
    @appointment = Appointment.new(appointment_params)
    @artist = artist.find(params[:artist_id])
    @appointment.artist = @artist
    if @appointment.save
      redirect_to artist_path(@artist)
    else
      render: new
    end
  end

  private

  def appointment_params
    params.require(:appointment).permit(:appointment_date, :status)
  end


end
