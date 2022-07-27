Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  resources :about, only: [:index]
  resources :main, only: [:index]
  root "main#index"
  get "signup", to: "registration#new"
end
