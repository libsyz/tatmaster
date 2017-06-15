class Review < ApplicationRecord
  # belongs_to :appointment
  # has_one :artist, through: :appointment
  belongs_to :artist

  after_save :update_artist_rating, if: :rating_changed?

  def update_artist_rating
    # self.artist.rating = 0 if self.artist.rating.nil?
    all_ratings = self.artist.reviews.reduce(0) { |a, r| a + r.rating }
    self.artist.rating = all_ratings / self.artist.reviews.length.to_f
    self.artist.save
  end
end
