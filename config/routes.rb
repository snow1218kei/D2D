Rails.application.routes.draw do	

  resources :image2s
  root to: 'toppages#index'	
	
  get 'login', to: 'sessions#new'	
  post 'login', to: 'sessions#create'	
  delete 'logout', to: 'sessions#destroy'	
	
  get 'signup', to: 'users#new'	
  resources :users, only: [:index, :show, :create]do
    member do
      get :products
    end
  end	
  
  resources :products
  resources :image1s
  resources :relationships, only: [:create, :destroy]
end	