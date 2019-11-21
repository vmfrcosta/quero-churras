class Grill < ApplicationRecord
  has_many :bookings
  has_many :photos, dependent: :destroy
  has_many :reviews
  
  belongs_to :user
  
  validates :name, presence: true
  validates :description, presence: true
  validates :address, presence: true
  validates :grills_type, presence: true
  validates :price, presence: true
  validates :status, presence: true

  accepts_nested_attributes_for :photos, reject_if: :all_blank, allow_destroy: true
end
