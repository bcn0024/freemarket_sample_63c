Rails.application.routes.draw do
  # devise_for :users,
  # controllers: {
  #   omniauth_callbacks: 'users/omniauth_callbacks'}
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' } 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  root to:  'products#index'



  resources :products, only: [:index, :create, :new, :destroy, :edit, :update, :show] do
    member do
      get 'purchase'
      post 'payjp'
      get 'myproduct'
  end
    resources :images, only: [:index,:destroy]
    
  end


  resources :users, only: [:index, :create, :new, :show, :destoroy, :edit, :update] do
    member do
      get 'mypagemore'
      get 'logout'
      get 'profile'

    end
  end

  resources :addresses, only: [:index, :create,:new, :edit, :update]
  
  resources :signup do
    resources :cards, only: [:index, :create,:new,]
    collection do
      get 'step1'
      get 'step1sns'
      get 'step2'
      get 'done'
      get 'step3'
      get 'step4'
    end
  end
end

