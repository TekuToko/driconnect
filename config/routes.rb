Rails.application.routes.draw do
  devise_for :users
  get 'warehouses/index'
  root to: "warehouses#index"
end
