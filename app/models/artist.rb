class Artist < ApplicationRecord
  belongs_to :studio
  has_many :tattoos
  has_many :appointments
  has_many :reviews
  geocoded_by :location
  after_validation :geocode, if: :location_changed?
end
