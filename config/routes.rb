#Rails.application.routes.url_helpers.url_for(controller: "admin/users", action: 'show', id: 1, host: 'somehost.org', port: '8080', subdomain: "yadah") do
Rails.application.routes.draw do
  devise_for :users
  resources :posts
  root to: 'posts#index'

  get 'home/index'
end
