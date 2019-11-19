class Grill < ApplicationRecord
  has_many :bookings
  belongs_to :user
  validates :name, presence: true
  validates :description, presence: true
  validates :address, presence: true
  validates :grills_type, presence: true
  validates :price, presence: true
  validates :status, presence: true
end
