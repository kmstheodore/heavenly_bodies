Rails.application.routes.draw do
  devise_for :users
  resources :users

  get 'sessions/new'
  get 'welcome/home'
  root to: 'welcome#home'
  get '/auth/facebook/callback' => 'sessions#create'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
