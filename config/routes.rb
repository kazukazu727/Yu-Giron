Rails.application.routes.draw do
  get 'favorites/create'
  get 'favorites/destroy'
  devise_for :users
  root "homes#top"
  get "about" =>"homes#about"
  get "user/mypage"=>"users#show"
  get "users/favorites"=>"user#favorites"
  get "followings"=>"relationships#followings", as: "followings"
  get "followers"=>"relationships#followers", as: "followers"

  resources :users, only:[:show, :edit, :update]
  resources :reviews, only:[:new, :create, :index, :show, :edit, :update, :destroy]
  resources :relationships, only:[:create, :destroy]
  resources :favorites, only:[:create, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
