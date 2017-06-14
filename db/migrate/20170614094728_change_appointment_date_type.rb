class ChangeAppointmentDateType < ActiveRecord::Migration[5.0]
  def change
    change_column :appointments, :appointment_date, :date
  end
end
