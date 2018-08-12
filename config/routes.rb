Rails.application.routes.draw do
  resources :slots
  resources :reservations
  namespace 'api' do
    resources :reservations
  end
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
  get '/dates', to: 'modals#dates'

end
