class CreateTattoos < ActiveRecord::Migration[5.0]
  def change
    create_table :tattoos do |t|
      t.string :name
      t.references :artist, foreign_key: true
      t.text :decription
      t.string :style

      t.timestamps
    end
  end
end
