class ReviewsController < ApplicationController
  def index
    @reviews=Review.all
  end

  def new
    @review=Review.new
  end

  def create
    @review=Review.new(review_params)
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
      redirect_to review_path(@review)
    else
      render :edit
    end
  end

  def destroy
  end

  def review_params
    params.require(:review).permit(:tittle, :genre, :introduction, :play_time, :user_id)
  end

end
