Rails.application.routes.draw do
  devise_for :users
  resources :bookings

  root to: 'pages#home'
  post '/booking-new', to: 'bookings#create'
  get 'planets/:id', to: 'planets#show', as: :planet

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
