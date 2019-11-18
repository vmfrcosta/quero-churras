class Grill < ApplicationRecord
  belongs_to :bookings
  validates :name, presence: true
  validates :description, presence: true
  validates :adress, presence: true
  validates :type, presence: true
  validates :price, presence: true
  validates :status, presence: true
end
