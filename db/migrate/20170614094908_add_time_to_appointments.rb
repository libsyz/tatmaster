class AddTimeToAppointments < ActiveRecord::Migration[5.0]
  def change
    add_column :appointments, :appointment_time, :time
  end
end
