class Appointment < ApplicationRecord
  belongs_to :user
  belongs_to :artist
  has_attachment :photo
  # has_one :review
end
