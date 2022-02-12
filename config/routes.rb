Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#top'
  resources :posts, only: [:index, :new, :show, :create, :destroy] do
    resources :comments, only: [:create, :destroy]
  end
  resources :users, only: [:show, :edit, :update]
end
