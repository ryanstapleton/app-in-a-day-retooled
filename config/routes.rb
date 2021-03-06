Rails.application.routes.draw do
  get 'my_events', to: 'pages#my_events'

  devise_for :users, path: '', path_names: {sign_in: 'login', sign_out: 'logout', sign_up: 'register'}
  resources :events
  resources :rsvps, only: [:new, :create, :destroy]
  resources :favorites, only: [:new, :create, :destroy]

  root :to => 'events#index'
end
