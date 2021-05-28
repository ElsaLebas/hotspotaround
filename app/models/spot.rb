class Spot < ApplicationRecord
  has_many :favorites

  validates :title, presence: true
  validates :description, presence: true
  validates :address, presence: true

  # geocoder
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
