Rails.application.routes.draw do
  devise_for :users,
  controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  resources :chateaus do
    resources :bookings, only: [:new, :create]
  end

  resources :bookings, except: [:new, :create] do
    get 'payment', to:'bookings#payment'
    get 'confirmation', to:'bookings#confirmation'
  end

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

