Rails.application.routes.draw do
	
  root to: 'items#index'

  devise_for :users

  resources :accounts, except: [:index, :new]
  resources :carts, except: [:index, :new, :edit]
  resources :items
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
