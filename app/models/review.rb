class Review < ApplicationRecord

  has_many :favorites, dependent: :destroy
  belongs_to :user
  validates :genre, presence: true

  def favorited_by?(user)
    favorites.where(user_id: user.id).exists?
  end

  enum genre: {
    action: 0,
    rpg: 1,
    sml: 2,
    sn: 3,
  }, _prefix: true


end
