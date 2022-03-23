Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'pages#home'

  resources :hotels do
    resources :rooms
  end

  resources :users do
    resources :bookings
  end
end
