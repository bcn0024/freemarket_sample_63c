Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # 

  root to:  'products#index'
  
  resources :products, only: [:index, :create,:new]
  resources :users, only: [:index, :create, :new]

end