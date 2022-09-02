Rails.application.routes.draw do
  devise_for :users
  resources :bookings


  resources :planets, only: [:show, :new, :create, :destroy, :index] do
    resources :bookings, only: [:create]
  end

  root to: 'pages#home'


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
