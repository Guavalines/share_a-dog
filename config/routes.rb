Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :dogs, only: %i[index show new create] do
    resources :bookings, only: %i[new create confirmation]
  end
  resources :bookings, only: %i[show]
end
