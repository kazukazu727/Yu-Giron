class UsersController < ApplicationController
  before_action :authenticate_user!,except: [:show]
  def show
    @user=User.find(params[:id])
    @reviews=@user.reviews.page(params[:page]).reverse_order
  end

  def mypage
    @user=current_user
    @reviews=@user.reviews.page(params[:page]).reverse_order
    redirect_to user_path(current_user)
  end

  def edit
    @user=current_user
  end

  def update
    @user=current_user
		if @user.update(user_params)
			if user_signed_in?
				flash[:notice] = "登録情報が更新されました。"
				redirect_to user_mypage_path
			else
				redirect_to request.referrer
			end
		else
			flash[:notice] = "項目を正しく記入してください"
			redirect_to request.referrer
		end
  end

  def favorites
    @user=User.find(params[:id])
    favorites=Favorite.where(user_id: @user.id).pluck(:review_id)
    @favorite_reviews=Review.find(favorites)
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :introduction)
  end


end
