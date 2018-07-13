Rails.application.routes.draw do
  root 'home#index'
  resources :posts

  namespace :admin do
    root to: 'dashboard#index'
  end
end
