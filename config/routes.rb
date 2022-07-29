Rails.application.routes.draw do
  root to: 'restaurants#index'
  resources :restaurants, only: [ :index, :edit, :show, :destroy ]
end
