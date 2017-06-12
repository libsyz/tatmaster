class Artist < ApplicationRecord
  belongs_to :studio
  has_many :tattoos, :appointments
end
