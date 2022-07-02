Rails.application.routes.draw do
  # verb 'path', to: 'controller#action', as: 'prefix'
  # See all restaurants
  root to: 'restaurants#index', as: 'restaurants'
  # get 'restaurants', to: 'restaurants#index', as: 'restaurants'
  # See details about one restaurant
  get 'restaurants/:id', to: 'restaurants#show', as: 'restaurant'
  # Create a restaurant
  get 'restaurants/new', to: 'restaurants#new', as: 'new_restaurant'
  post 'restaurants', to: 'restaurants#create'
  # Update a restaurant
  get 'restaurants/:id/edit', to: 'restaurants#edit', as: 'edit_restaurant'
  patch 'restaurants/:id', to: 'restaurants#update'
  # Destroy a restaurant
  delete 'restaurants/:id', to: 'restaurants#destroy'

  # resources :restaurants
end
