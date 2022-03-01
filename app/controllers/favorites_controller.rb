class FavoritesController < ApplicationController
   before_action :authenticate_user!
  def create
    @review=Review.find(params[:review_id])
    review=Review.find(params[:review_id])
    favorite=current_user.favorites.new(review_id: review.id)
    favorite.save
  end

  def destroy
    @review=Review.find(params[:review_id])
    review=Review.find(params[:review_id])
    favorite=current_user.favorites.find_by(review_id: review.id)
    favorite.destroy
  end

  private
  def favorite_params
    params.require(:favorite).permit(:review_id, :user_id)
  end

  def review_params
    prams.require(:review).permit(:user_id)
  end
end
