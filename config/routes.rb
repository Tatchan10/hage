Rails.application.routes.draw do
  root to: 'toppages#index'
  
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  
  get 'signup', to: 'users#new'
  resources :users
  resources :reviews, only: [:new, :create, :destroy]
  
  resources :posts, only: [:create, :destroy]
  resources :tonics, only: [:index, :show]
end

