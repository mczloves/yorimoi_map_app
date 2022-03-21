class Post < ApplicationRecord
  belongs_to :user
  has_many :likes, dependent: :destroy
  has_many :liked_users, through: :likes, source: :user
  has_many :comments, dependent: :destroy
  with_options presence: true do
    validates :title
    validates :content
  end
  mount_uploader :image, ImageUploader

  def liked_by?(user)
    likes.any? { |like| like.user_id == user.id }
  end

  def set_date
    created_at.strftime("%Y年%m月%d日%H時")
  end

end
