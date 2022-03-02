class HomesController < ApplicationController
  def top
    @review_ranks=Review.find(Favorite.group(:review_id).order("count(review_id) desc").limit(3).pluck(:review_id))
    @month_review_ranks=Review.find(Favorite.group(:review_id).where(created_at: Time.current.all_month).order("count(review_id) desc").limit(3).pluck(:review_id))
    @week_review_ranks=Review.find(Favorite.group(:review_id).where(created_at: Time.current.all_week).order("count(review_id) desc").limit(3).pluck(:review_id))
    @day_review_ranks=Review.find(Favorite.group(:review_id).where(created_at: Time.current.all_day).order("count(review_id) desc").limit(3).pluck(:review_id))
    review_favorite_count={}
    User.all.each do |user|
      review_favorite_count.store(user, Favorite.where(review_id: Review.where(user_id: user.id).pluck(:id)).count)
    end
    @user_ranks=review_favorite_count.sort_by { |_, v| v }.reverse.to_h.keys


  end

  def about
  end


end
