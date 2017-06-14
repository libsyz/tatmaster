class ChangeAppointmentTime < ActiveRecord::Migration[5.0]
  def change
    change_column :appointments, :appointment_time, :string
  end
end
