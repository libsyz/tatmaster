class CreateStudios < ActiveRecord::Migration[5.0]
  def change
    create_table :studios do |t|
      t.string :name
      t.text :description
      t.string :location

      t.timestamps
    end
  end
end
