Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


<<<<<<< HEAD
  root to:  'products#index'
=======
  root to:  'users#exhibitedit'
>>>>>>> eeb69d93fac5a86c434446fefc45ca477cb67919
  
  resources :products, only: [:index, :create,:new,:destroy] do
    resources :images, only: [:index,:destroy]
    member do
      get 'myproduct'
    end
  end
<<<<<<< HEAD
  resources :users, only: [:index, :create,:new,:destroy,:show] 
=======

  resources :users, only: [:index, :create, :new, :show ,:destoroy] 
  

 
  resources :mypage,only:[:index,:show,:destroy]

>>>>>>> eeb69d93fac5a86c434446fefc45ca477cb67919
  resources :signup do
    resources :addresses, only: [:index, :create,:new,]
    resources :cards, only: [:index, :create,:new,]
    collection do
      get 'step1'
      get 'step2'
      get 'done'
      get 'step3'
      get 'step4'
    end
  end
end
