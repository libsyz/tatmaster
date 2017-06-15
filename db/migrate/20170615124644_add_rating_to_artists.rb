class AddRatingToArtists < ActiveRecord::Migration[5.0]
  def change
    add_column :artists, :rating, :integer
  end
end
