class Spot < ApplicationRecord
  has_many :groups
  geocoded_by :address
  after_validation :geocode
end
