Rails.application.routes.draw do
	
  root to: 'items#index'

  devise_for :users

  resources :cart_items, only: [:create, :update, :destroy]
  resources :accounts, except: [:index, :new]
  resources :carts, except: [:index, :new, :edit]
  resources :items
  resources :charges
  resources :delivery_adresses, except: [:index, :show]
  resources :orders, only: [:show, :new, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
