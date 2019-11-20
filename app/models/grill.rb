class Grill < ApplicationRecord
  has_many :bookings
  has_many :photos
  belongs_to :user
  has_many :reviews
  validates :name, presence: true
  validates :description, presence: true
  validates :address, presence: true
  validates :grills_type, presence: true
  validates :price, presence: true
  validates :status, presence: true
end
