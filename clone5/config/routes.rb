Rails.application.routes.draw do
  resources :likes ,only: [:create,:destroy]
  resources :subscriptions
  resources :tweets
  get '/search',to: 'tweets#search'
  get '/personal/page',to: 'tweets#personalpage'
  resources :profiles
  root 'tweets#index'
  devise_for :users
 
end
