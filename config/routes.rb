Rails.application.routes.draw do
  get 'contact_us', to: 'contact_form#index', as: 'contact_kamich_technologies_tz'

  get 'contact_form/new'
  post 'contact_form/create'
  get 'about_us', to: 'about#index', as: 'about_kamich_technologies_tz'
  resources :partners
  resources :projects
  resources :ourservices
  
  get 'ourservices', to: 'ourservice#index', as: 'kamich_technologies_tz_services'
  
  get 'kashg', to: 'cpanel#index', as: 'kashg'
  resources :hero_images
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # get 'sessions/new'
  get 'signup', to: "users#new"
  resources :users
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  root "home#index"
end
