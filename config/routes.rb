Rails.application.routes.draw do
  root "reservations#new"
  scope ":locale", locale: /#{I18n.available_locales.join("|")}/ do
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
    namespace 'api' do
      namespace 'v1' do
        resources :orders
    	end
    end

    get '/table', to: 'modals#table'
    get '/dates', to: 'modals#dates'
  end
end
