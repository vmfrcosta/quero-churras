class Photo < ApplicationRecord
  mount_uploader :url, PhotoUploader
  belongs_to :grill
end
