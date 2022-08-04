# frozen_string_literal: true

Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  resources :about, only: [:index]
  resources :main, only: [:index]  
  
  get 'sign_up', to: 'registration#new'
  post 'sign_up', to: 'registration#create'

  get 'passwords', to: 'passwords#edit', as: :edit_password
  patch 'passwords', to: 'passwords#update'
  
  get 'sign_in', to: 'sessions#new'
  post 'sign_in', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  get 'password/reset', to: 'password_resets#new'
  post 'password/reset', to: 'password_resets#create'
  get 'password/reset/edit', to: 'password_resets#edit'
  patch 'password/reset/edit', to: 'password_resets#update'

  get '/auth/twitter/callback', to: 'omniauth_callbacks#twitter'

  resources 'twitter_accounts'

  root 'main#index'
end
