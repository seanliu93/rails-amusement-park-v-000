Rails.application.routes.draw do

  post 'rides/create'

  resources :attractions
  get 'signup', to: 'users#new'
  get 'signin', to: 'sessions#new'
  post 'signin', to: 'sessions#create'
  delete 'signout', to: 'sessions#destroy'

  root to: 'static#home'

  resources :users
end