class ReviewsController < ApplicationController
   before_action :authenticate_user!,except: [:index]
  def index
    @reviews=Review.order(created_at: :desc).page(params[:page])
  end

  def new
    @review=Review.new
  end

  def create
    @review=Review.new(review_params)
    @review.user_id=current_user.id
    if @review.save
      flash[:notice]="投稿に成功しました"
      redirect_to user_mypage_path
    else
      flash[:notice] = "項目を正しく記入してください"
			redirect_to request.referrer
		end
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
      flash[:notice]="投稿に成功しました"
      redirect_to reviews_path
    else
      flash[:notice] = "項目を正しく記入してください"
			redirect_to request.referrer
    end
  end

  def destroy
    @review=Review.find(params[:id])
    @review.destroy
    redirect_to user_mypage_path
  end

  def review_params
    params.require(:review).permit(:tittle, :genre_id, :introduction, :play_time_id, :user_id, :star, :price_id, :game_tittle, :plat_form_id)
  end

end
