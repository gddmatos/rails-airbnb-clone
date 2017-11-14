class Chateau < ApplicationRecord
  validates :description, presence: true
  validates :price, presence: true
  validates :area, presence: true
  validates :bedrooms, presence: true
end
