Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  root to:  'products#index'
  
  resources :products, only: [:index, :create,:new] do
    resources :images, only: [:index]
  end
  resources :users, only: [:index, :create, :new, :show ,:destoroy] 
  
  resources :signup do
    resources :addresses, only: [:index, :create, :new]
    resources :cards, only: [:index, :create, :new]
    collection do
      get 'step1'
      get 'step2'
      get 'done'
      get 'step3'
      get 'step4'
    end
  end
end
