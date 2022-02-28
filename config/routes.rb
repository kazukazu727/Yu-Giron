Rails.application.routes.draw do
  get 'favorites/create'
  get 'favorites/destroy'
  devise_for :users
  root "homes#top"
  get "about" =>"homes#about"
  get "user/mypage"=>"users#mypage"
  get "/search"=>"search#search"

  resources :users, only:[:show, :edit, :update]do
    member do
      get :favorites
    end
    resource :relationships, only:[:create, :destroy]
    get "followings"=>"relationships#followings", as: "followings"
    get "followers"=>"relationships#followers", as: "followers"
  end

  resources :reviews, only:[:new, :create, :index, :show, :edit, :update, :destroy]do
    resource :favorites, only: [:create, :destroy]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
