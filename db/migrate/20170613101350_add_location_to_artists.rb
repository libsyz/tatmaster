class AddLocationToArtists < ActiveRecord::Migration[5.0]
  def change
    add_column :artists, :location, :string
  end
end
