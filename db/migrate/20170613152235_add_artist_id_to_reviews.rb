class AddArtistIdToReviews < ActiveRecord::Migration[5.0]
  def change
    add_reference :reviews, :artist, foreign_key: true
  end
end
