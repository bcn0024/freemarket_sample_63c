Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  root to:  'users#exhibitedit'
  
  resources :products, only: [:index, :create,:new,:destroy] do
    resources :images, only: [:index,:destroy]
  end
  resources :users, only: [:index, :create,:new,:destroy] 
  
  resources :signup do
    resources :addresses, only: [:index, :create,:new,:destroy]
    resources :cards, only: [:index, :create,:new,:destroy]
    collection do
      get 'step1'
      get 'step2'
      get 'done'
      get 'step3'
      get 'step4'
    end
  end
end