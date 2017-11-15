Rails.application.routes.draw do
  devise_for :users
  resources :chateaus do
    resources :bookings, only: [:create]
  end

  resources :bookings, except: [:create]

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

