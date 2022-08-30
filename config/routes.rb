Rails.application.routes.draw do
  devise_for :users

  get 'sessions/new'
  get 'welcome/home'

  root to: 'welcome#home'

  get '/signup', to: "users#new"
  get '/signin', to: "sessions#new"
  post '/signin', to: "sessions#create"
  get '/logout', to: "sessions#destroy"
  post '/users/:id', to: "users#update"
  get '/auth/facebook/callback' => 'sessions#create'
  # Theo's code
  get 'welcome/marketplace', to: "welcome#marketplace"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
