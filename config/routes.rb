Rails.application.routes.draw do
  devise_for :users
  root 'home#index'
  resources :posts
  # get 'persons/profile', as: 'user_root'

  namespace :admin do
    root to: 'dashboard#index'
  end
end
