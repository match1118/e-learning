Rails.application.routes.draw do
  get 'answers/new'

  root 'static_pages#home'
  get '/help',   to: 'static_pages#help'
  get '/about',  to: 'static_pages#about'
  get '/signup',  to: 'users#new'
  get '/login',   to: 'sessions#new'
  post '/login',  to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  resources :users do
    member do
      get :following, :followers
    end
  end
  resources :relationships, only: [:create, :destroy]
  resources :categories
  resources :lessons do
    resources :answers, only: [:new]
  end
  namespace :admin do 
    resources :users, only: [:index]
    resources :categories do
      resources :words
    end
  end
end 
