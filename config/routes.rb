Rails.application.routes.draw do
  get 'arounds/index'
  get 'users/show'
  devise_for :users
  get 'warehouses/index'
  root to: "warehouses#index"

  resources :users, only: [:show, :edit, :update, :destroy]
  resources :warehouses, only: [:index, :new, :create, :show, :edit, :update]
  resources :arounds, only: [:index, :new, :create, :show, :edit, :update]
  resources :contacts, only: [:new, :create]
  post 'contacts/confirm', to: 'contacts#confirm', as: 'confirm'
  post 'contacts/back', to: 'contacts#back', as: 'back'

  post '/contacts/done', to: 'contacts#done', as: :contacts_done
  get '/contacts', to: 'contacts#index'


end
