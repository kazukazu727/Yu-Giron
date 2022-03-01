class Review < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :genre
  belongs_to_active_hash :play_time
  belongs_to_active_hash :price
  belongs_to_active_hash :plat_form

  has_many :favorites, dependent: :destroy
  belongs_to :user

  def favorited_by?(user)
    favorites.where(user_id: user.id).exists?
  end

  validates :game_tittle, presence: true
  validates :tittle, presence: true
  validates :star, presence: true
  validates :genre_id, presence: true
  validates :price_id, presence: true
  validates :play_time_id, presence: true
  validates :plat_form_id, presence: true



end
