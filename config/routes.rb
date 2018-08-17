Rails.application.routes.draw do
  root "reservations#new"
  get '/reservations', to: "reservations#index"
  scope ":locale", locale: /#{I18n.available_locales.join("|")}/ do
    devise_for :users
    resources :slots
    resources :reservations
    namespace 'api' do
      resources :reservations
    end
    resources :tables
    resources :dinners
    resources :orders
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
  devise_scope :user do
    get '/admin', to: 'devise/sessions#new'
    get '/signup', to: 'devise/registrations#new'
  end
end
