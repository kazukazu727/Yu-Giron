Rails.application.routes.draw do
  devise_for :users
  root "homes#top"
  get "about" =>"homes#about"
  get "user/mypage"=>"users#show"
  get "users/favorites"=>"user#favorites"
  get "followings"=>"relationships#followings"
  get "followers"=>"relationships#followers"

  resources :users, only:[:show, :edit, :update]
  resources :reviews, only:[:new, :create, :index, :show, :edit, :update, :destroy]
  resources :relationships, only:[:create, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
