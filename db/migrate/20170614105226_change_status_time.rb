class ChangeStatusTime < ActiveRecord::Migration[5.0]
  def change
    change_column :appointments, :status, :string, default: 'pending'
  end
end
