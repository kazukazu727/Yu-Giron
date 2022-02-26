class Review < ApplicationRecord

  has_many :favorites, dependent: :destroy
  belongs_to :user

  def favo?(user)
    favorites.where(user_id: user.id).exists?
  end
end
