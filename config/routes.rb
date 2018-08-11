Rails.application.routes.draw do
  resources :reservations
  get "reservations/table" => 'reservations#table', :as => :table
  resources :tables
  resources :dinners
  resources :orders
  devise_for :users
  resources :businesses
  resources :customers
  root to: "reservations#new"
  namespace 'api' do
    namespace 'v1' do
      resources :orders
  	end
  end
  get '/table', to: 'modals#table'

end
