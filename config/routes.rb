Rails.application.routes.draw do
  get 'warehouses/index'
  root to: "warehouses#index"
end
