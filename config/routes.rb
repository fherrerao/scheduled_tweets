# frozen_string_literal: true

Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  resources :about, only: [:index]
  resources :main, only: [:index]
  root 'main#index'
  get 'signup', to: 'registration#new'
  post 'signup', to: 'registration#create'
  delete 'logout', to: 'sessions#destroy'

  get 'sign_in', to: 'sessions#new'
  post 'sign_in', to: 'sessions#create'
end
