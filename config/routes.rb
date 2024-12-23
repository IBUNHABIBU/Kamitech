Rails.application.routes.draw do
  get 'contact_kamich_technologies_tz', to: 'contact_form#index', as: 'contact_us'

  get 'contact_form/new'
  post 'contact_form/create'
  get 'about_kamich_technologies_tz', to: 'about#index', as: 'about_us'
  resources :partners
  resources :projects, path: 'kamich_technologies_tz_projects'
  resources :ourservices, path: 'kamich_technologies_tz_services'

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
