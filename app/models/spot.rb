class Spot < ApplicationRecord
  validates :title, presence: true
  validates :description, presence: true
  validates :address, presence: true
  validates :latitude, presence: true
  validates :longitude, presence: true
end
