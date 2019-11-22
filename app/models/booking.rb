class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :grill

  def fix_date(date)
    return date.split('-').reverse.join('/')
  end
end
