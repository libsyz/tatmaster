class AppointmentsController < ApplicationController
  def new
    @appointment = Appointment.new
  end

  def create
    @appointment = Appointment.new(appointment_params)
    @artist = Artist.find(params[:artist_id])
    @appointment.artist = @artist
    @appointment.user = current_user
    if @appointment.save
      redirect_to dashboard_path
    else
      render "artists/show"
    end
  end

  private

  def appointment_params
    params.require(:appointment).permit(:appointment_date, :status)
  end
end
