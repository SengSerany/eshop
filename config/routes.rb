Rails.application.routes.draw do
	
  get 'delivery_adresses/new'
  get 'delivery_adresses/create'
  get 'delivery_adresses/edit'
  get 'delivery_adresses/update'
  get 'delivery_adresses/destroy'
  root to: 'items#index'

  devise_for :users

  resources :cart_items, only: [:create, :update, :destroy]
  resources :accounts, except: [:index, :new]
  resources :carts, except: [:index, :new, :edit]
  resources :items
  resources :charges
  resources :orders, only: [:show, :new, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
