Rails.application.routes.draw do
  devise_for :users



  get '/signin', to: "sessions#new"
  post '/signin', to: "sessions#create"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
