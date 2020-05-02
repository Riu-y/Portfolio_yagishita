Rails.application.routes.draw do
  get 'informations/index'
  get 'informations/new'
  get 'informations/show'
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
  root :to => 'homes#index'
  get 'homes/index'
  get 'homes/about'

  resources :admins, only:[:index]
		namespace :admins do
			resources :ad_clients, only: [:index, :show, :update]
			resources :driver, only: [:index, :show, :update]
			resources :genres, only: [:index, :create, :edit, :update, :destroy]
			resources :contacts, only: [:index,:show]
	  end

	resources :ad_clients, only:[:index, :show, :edit, :update]do
  		member do
        get :dashboard
  			get :followings, :followers
  		end
    scope module: :ad_clients do
  	 resources :complete_deals, only:[:index, :show, :create, :edit, :update]
     resources :ads
    end
    resources :relationship_drivers, only:[:create, :destroy]
  end
  get '/search_ad_client', to: 'searchs#search_ad_client'

	resources :drivers, only:[:index, :show, :edit, :update]do
  	  member do
        get :dashboard
  	  	get :followings, :followers
  	  	patch :is_active
  	  end
    resources :car_informations, only:[:index, :create, :edit, :update, :destroy]
    resources :transfer_informations, only:[:index, :create, :edit, :update, :destroy]
    resources :relationships, only:[:create, :destroy]
  end
  get '/search_driver', to: 'searchs#search_driver'

	resources :deal_details, only:[:index, :create, :update]
	resources :completed_deals, only:[:index, :show, :update]
  resources :informations

  resources :under_deals, only:[:index, :show, :create, :edit,:update]do
      member do
        get :show_driver
      end
    resources :deal_messages, only:[:create]
  end
  scope module: :under_deals do
      get :how_to_kit
	end
  resources :contacts, only:[:new, :create,:index,:show,:update]do
		post :confirm, action: :confirm_new, on: :new
	end
  scope module: :contacts do
    get :new_inquiry
    get :working_inquiry
    get :past_inquiry
  end

 	resources :ads, only:[:index, :show]do
    resources :chats, only: [:index, :create]
    resources :rooms, only:[:index, :show, :create]
 		member do
 		 get :genre_search
 		 get :favorite_search
 		 post :apply
 		end
 		resource :favorites, only: [:create, :destroy]
 	end
end