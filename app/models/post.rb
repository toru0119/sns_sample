class Post < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_many :likes

  attachment :image

  def liked_by?(user)
    likes.where(user_id: user.id).exists?
  end
end
