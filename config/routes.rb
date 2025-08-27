Rails.application.routes.draw do
  # Devise authentication for admins
  devise_for :admins

  # Public-facing pages
  root "pages#index"
  get "about" => "pages#about", as: :about

  # Optional custom admin dashboard page (not part of namespace)

  # Admin namespace for CRUD
  namespace :admin do
      # Optional custom admin dashboard page (not part of namespace)
  get "/", to: "dashboard#index", as: :index
  get "/store", to: "dashboard#store", as: :store
  get "/sales", to: "dashboard#sales", as: :sales
  get "/settings", to: "dashboard#settings", as: :settings
  get "/users", to: "dashboard#users", as: :users
  get "/mails", to: "dashboard#mails", as: :mails
  get "/notifications", to: "dashboard#notifications", as: :notifications
  get "/home", to: "dashboard#home", as: :home
    resources :categories
    resources :products
    resources :variants
    resources :product_images
    
  end

  # Other routes (PWA, health checks, etc.) can be uncommented as needed
end
