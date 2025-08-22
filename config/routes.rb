Rails.application.routes.draw do
  # Devise authentication for admins
  devise_for :admins

  # Public-facing pages
  root "pages#index"
  get "about" => "pages#about", as: :about

  # Optional custom admin dashboard page (not part of namespace)
  get "admin" => "pages#dashboard", as: :admin

  # Admin namespace for CRUD
  namespace :admin do
    resources :categories
    resources :products
    resources :variants
    resources :product_images
    root to: "categories#index"
  end

  # Other routes (PWA, health checks, etc.) can be uncommented as needed
end
