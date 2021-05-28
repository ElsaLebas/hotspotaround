class User < ApplicationRecord
  has_many :favorites
  validates :username, presence: true, uniqueness: true
  validates :email, presence: true
  validates :username, uniqueness: { scope: :email }
  validates :email, format: { with: /\A.*@.*\.com\z/,
    message: "please enter a valid email" }
end
