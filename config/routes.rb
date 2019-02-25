Rails.application.routes.draw do
  devise_for :users
  resources :posts

  root to: 'posts#index'

  get 'home/index'
end
