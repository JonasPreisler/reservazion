Rails.application.routes.draw do
  resources :reservations
  resources :tables
  resources :dinners
  resources :orders
  devise_for :users
  resources :businesses
  resources :customers
  root to: "dinners#index"
  namespace 'api' do
    namespace 'v1' do
      resources :orders
  	end
  end
end
