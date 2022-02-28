class ReviewsController < ApplicationController
  def index
    @reviews=Review.all
  end

  def new
    @review=Review.new
  end

  def create
    @review=Review.new(review_params)
    @review.user_id=current_user.id
    @review.save
    redirect_to user_mypage_path
  end

  def show
    @review=Review.find(params[:id])
  end

  def edit
    @review=Review.find(params[:id])
  end

  def update
    @review=Review.find(params[:id])
    if @review.update(review_params)
      redirect_to reviews_path
    else
      render :edit
    end
  end

  def destroy
    @review=Review.find(params[:id])
    @review.destroy
    redirect_to user_mypage_path
  end

  def review_params
    params.require(:review).permit(:tittle, :genre, :introduction, :play_time, :user_id, :star, :price, :game_tittle, :plat_form)
  end

end
