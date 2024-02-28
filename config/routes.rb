Rails.application.routes.draw do
  resources :event_submissions
  #Ne pas envlever les lignes concernant devise
  devise_for :users
  root 'events#index'

  resources :events do
    resources :attendances, only:[:index,:new,:create]
    resources :photo_events, only: [:create,:destroy]
  end

  resources :users, only:[:show] do 
    resources :avatars, only: [:create,:destroy]
  end
  
  #code concernant strip paiement
  scope '/checkout' do
    post 'create', to: 'checkout#create', as: 'checkout_create'
    get 'success', to: 'checkout#success', as: 'checkout_success'
    get 'cancel', to: 'checkout#cancel', as: 'checkout_cancel'
  end
  
  
  #partie administrateur
  namespace :admin do    
    root 'admins#index'
    resources :admins
    resources :users
    resources :event_submissions do 
      member do
        patch 'accept_event'
        patch 'reject_event'
      end
    end
  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
