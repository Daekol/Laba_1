Rails.application.routes.draw do
  devise_for :users
  
  get '/home', to: 'pages#home', as: 'home'
  get '/about', to: 'pages#about'
  get '/page', to: 'pages#page'
  get '/process_page', to: 'pages#process_page'
  get 'pages/home'
  get 'pages/about'
  get 'set_locale/:locale', to: 'application#set_locale', as: :set_locale
  resources :players
  resources :coaches
  resources :schedules
  resources :teams
  resources :tournaments
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
