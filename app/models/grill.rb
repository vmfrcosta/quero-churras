class Grill < ApplicationRecord
  has_many :bookings
  has_many :photos, dependent: :destroy
  has_many :reviews, dependent: :destroy

  belongs_to :user

  validates :name, presence: true
  validates :description, presence: true
  validates :address, presence: true
  validates :grills_type, presence: true
  validates :price, presence: true
  validates :status, presence: true

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  accepts_nested_attributes_for :photos, reject_if: :all_blank, allow_destroy: true
end
