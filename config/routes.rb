Rails.application.routes.draw do
  devise_for :users
  root to: 'post#index'
  resources :posts, expect: :index
  resources :users, only: :show
end
