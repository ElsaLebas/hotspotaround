class Spot < ApplicationRecord
  has_many :favorites
  validates :title, presence: true
  validates :description, presence: true
  validates :address, presence: true
end
