class Photo < ApplicationRecord
  belongs_to :chateau

mount_uploader :photo, PhotoUploader
end
