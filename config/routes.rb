Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#top'
  get '/search' => 'searches#search'
  resources :users, only: [:show, :edit, :update] do
    resource :relationships, only: [:create, :destroy]
    get 'followings' => 'relationships#followings', as: 'followings'
    get 'followers' => 'relationships#followers', as: 'followers'
  end
  resources :posts, only: [:index, :new, :show, :create, :destroy] do
    resource :likes, only: [:create, :destroy]
    resources :comments, only: [:create, :destroy]
  end

end
