Rails.application.routes.draw do
  get 'users/show'
  devise_for :users
  get 'warehouses/index'
  root to: "warehouses#index"

  resources :users, only: [:show, :edit, :update, :destroy]

end
