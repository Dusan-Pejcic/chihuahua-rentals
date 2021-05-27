Rails.application.routes.draw do
  root to: 'pages#home'
  get 'search', to: "dogs#search"
  resources :dogs do
    resources :bookings, only: [:new, :show, :create]
  devise_for :users

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
end
