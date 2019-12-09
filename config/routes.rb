Rails.application.routes.draw do
  # devise_for :users,
  # controllers: {
  #   omniauth_callbacks: 'users/omniauth_callbacks'}
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' } 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  root to:  'products#index'


  resources :products, only: [:index, :create, :new, :destroy, :edit, :update, :show] do
    collection do
      get 'children'
      get 'grandchildren'
    end
    resources :images, only: [:index,:destroy,:new,:create]

    member do
      get 'purchase'
      post 'payjp'
      get 'myproduct'
      get 'cardnew'
      get 'cardshow'
      post 'pay', to: 'products#pay'
    end

    collection do
      get 'cardnew'
      get 'cardshow'
      post 'pay', to: 'products#pay'
    end
      resources :card, only: [:index, :create, :new, :destroy]
        collection do
          post 'pay', to: 'card#pay'
          get 'cardnew'
          get 'cardshow'
      end
  end
    resources :images, only: [:index,:destroy]do
    
  end
  resources :users, only: [:index, :create, :new, :show, :destoroy, :edit, :update] do
    member do
      get 'selling'
      get 'soldout'
      get 'logout'
      get 'profile'
    end
    resources :card, only: [:index, :create, :new, :destroy]
    collection do
      post 'pay', to: 'card#pay'
    end
  end

  resources :addresses, only: [:index, :create,:new, :edit, :update]
  
  resources :signup do
    resources :cards, only: [:index, :create,:new,]
    collection do
      get 'step1'
      get 'step1sns'
      get 'step2'
      post 'done'
      get 'step3'
      get 'step4'
      post 'pay', to: 'signup#pay'
      get 'step5'
    end
  end
end

