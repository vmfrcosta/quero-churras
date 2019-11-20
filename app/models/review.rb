class Review < ApplicationRecord
  belongs_to :user
  belongs_to :grill
  validates :stars, presence: true, inclusion: { in: [0, 1, 2, 3, 4, 5] }, numericality: { only_integer: true }
  validates :content, presence: true, allow_blank: true
  validates :user, presence: true
  validates :grill, presence: true
end
