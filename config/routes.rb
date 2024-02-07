Rails.application.routes.draw do
  resources :projects
  resources :ourservices
  get 'kashg', to: 'cpanel#index', as: 'kashg'
  resources :hero_images
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # get 'sessions/new'
  get 'signup', to: "users#new"
  resources :users
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  root "home#index"
end
