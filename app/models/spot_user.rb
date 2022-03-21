class SpotUser < ApplicationRecord
  belongs_to :user
  belongs_to :spot
  validates :comment, presence: true
  mount_uploader :image, ImageUploader
end
