Rails.application.routes.draw do
  get 'users/new'
  get 'users/create'
  root to: 'tasks#index'
  
  resources :tasks, only: [:create, :new, :edit, :show, :update, :destroy]
  
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  
  get 'signup', to: 'users#new'
  resources :users, only: [:create]
end
