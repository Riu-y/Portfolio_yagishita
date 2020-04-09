Rails.application.routes.draw do
  devise_for :admins, controllers:{
    registrations: 'admins/registrations',
    sessions: 'admins/sessions'
  }
  devise_for :drivers, controllers:{
    registrations: 'drivers/registrations',
    sessions: 'drivers/sessions'
  }
  devise_for :ad_clients, controllers:{
    registrations: 'ad_clients/registrations',
    sessions: 'ad_clients/sessions'
  }

  get 'homes/index'
  get 'homes/about'

  resources :admins, only:[:index]
  root 'admins#index'
		namespace :admins do
			resources :ad_clients, only: [:index, :show, :update]
			resources :driver, only: [:index, :show, :update]
			resources :genres, only: [:index, :create, :edit, :update, :destroy]
			resources :contacts, only: [:index,:show]
	  end

	resources :ad_clients, only:[:show, :edit, :update]do
    root 'ad_clients#show'
  		member do
  			get :following, :followers
  		end
    scope module: :ad_clients do
  	 resources :ads
  	 resources :complete_deals, only:[:index, :show, :create, :edit, :update]
    end
  end

	resources :drivers, only:[:show, :edit, :update]do
    root 'drivers#show'
  	  member do
  	  	get :following, :follower
  	  	patch :is_active
  	  end
    resources :car_informations, only:[:index, :create, :edit, :update, :destroy]
    resources :transfer_informations, only:[:index, :create, :edit, :update, :destroy]
  end

	resources :deal_details, only:[:index, :create, :update]
	resources :under_deals, only:[:index, :show, :create, :edit,:update]
	resources :completed_deals, only:[:index, :show, :update]
	resources :contacts, only:[:new]do
		post :confirm, action: :confirm_new, on: :new
	end
	resources :chats, only: [:create]
 	resources :ads, only:[:index, :show]do
 		member do
 		 get :genre_search
 		 get :favorite_search
 		 post :apply
 		end
 		resource :favorites, only: [:create, :destroy]
 	end
end