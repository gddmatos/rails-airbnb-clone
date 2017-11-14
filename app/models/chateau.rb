class Chateau < ApplicationRecord
   mount_uploader :photo, PhotoUploader
  validates :description, presence: true
  validates :price, presence: true
  validates :area, presence: true
  validates :bedrooms, presence: true

end
