class Studio < ApplicationRecord
  geocoded_by :location
  after_validation :geocode, if: :location_changed?
end
