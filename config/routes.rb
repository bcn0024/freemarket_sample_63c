Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # 
  resources :products,only:[:index, :new, :create]
  root to:  'products#new'
end