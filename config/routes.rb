Rails.application.routes.draw do
  devise_for :users
  resources :users do
      resources :cars
      resources :bookings
  end
  root to: 'pages#home'


  resources :cars do
    resources :bookings, only: [ :new, :create ]
  end
  resources :bookings, only: [ :index, :show, :update ]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
