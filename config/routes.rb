Rails.application.routes.draw do
  devise_for :users,
  controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  resources :chateaus do
    resources :bookings, only: [:new, :create]
  end

  resources :bookings, except: [:new, :create]

  get 'payment', to:'pages#payment'

  get 'confirmation', to:'pages#confirmation'

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

