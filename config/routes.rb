Rails.application.routes.draw do
  get 'dog/controller'
  resources :index_controllers
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
