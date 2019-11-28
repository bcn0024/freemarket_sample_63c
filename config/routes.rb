Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # 

  root to:  'users#new6'

  root to:  'users#index1'
  root to:  'products#coach'
  root to:  'users#new2'
  
  root to:  'users#new3'
  

  root to: 'users#new'
  root to:  'products#profile'





  
 
  root to:  'products#top'
  resources :products, only: [:index, :create,:new]
  resources :users, only: :index

end