Rails.application.routes.draw do
  devise_for :admins
  get 'home/index'
  resources :products
  resources :categories
  root to: "home#index"
end
