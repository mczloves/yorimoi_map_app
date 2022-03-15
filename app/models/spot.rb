class Spot < ApplicationRecord
  mount_uploader :image, ImageUploader
  mount_uploader :image_2, ImageUploader
  has_many :spot_users, dependent: :destroy
end
