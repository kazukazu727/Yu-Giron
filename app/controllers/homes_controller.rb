class HomesController < ApplicationController
  def top
    @review_ranks=Review.find(Favorite.group(:review_id).order("count(review_id) desc").limit(3).pluck(:review_id))
    @follow_ranks
  end

  def about
  end

end
