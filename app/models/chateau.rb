class Chateau < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :address_changed?

  mount_uploader :photo, PhotoUploader
  validates :description, presence: true
  validates :price, presence: true
  validates :area, presence: true
  validates :bedrooms, presence: true
end
