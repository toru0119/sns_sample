Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#top'
  resources :posts, only: [:index, :new, :show, :create, :destroy]
  resources :users, only: [:show, :edit, :update]
end
