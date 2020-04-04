Rails.application.routes.draw do
  devise_for :drivers
  devise_for :ad_clients
  devise_for :admins
  root 'homes#top'

  resources :admin, only:[:index]
		namespace :admin do
			resources :ad_clients, only: [:index, :show, :update]
			resources :driver, only: [:index, :show, :update]
			resources :genres, only: [:index, :create, :edit, :update]
			resources :contacts, only: [:index,:show]
	  end

	resources :ad_clients, only:[:index, :edit, :update]do
		member do
			get :following, :followers
		end
	end
	  namespace :ad_clients do
	  	resources :ads
	  	resources :complete_deals, only:[:index, :show, :create, :edit, :update]
	  end

	resources :drivers, only:[:index, :edit, :update]do
	  member do
	  	get :following, :follower
	  	patch :is_active
	  end
	end
	  namespace :drivers do
	  	resources :car_informations, only:[:index, :create, :edit, :update]
	  	resources :transfer_informations, only:[:index, :create, :edit, :update]
	  end

	resources :deal_details, only:[:index, :create, :update]
	resources :deallings, only:[:index, :show, :create, :edit,:update]
	resources :completed_deals, only:[:index, :show, :update]
	resources :contacts, only:[:new]do
		post :confirm, action: :confirm_new, on: :new
	end
	resources :chats, only: [:create]
 	resources :ads, only:[:index, :show]do
 			member do
 			get :genre_serch
 			get :favorite_serch
 			post :apply
 			end
 			resource :favorites, only: [:create, :destroy]do
 		end
 	end
end

  # get 'ads/index'
  # get 'ads/show'
  # get 'ads/genre_serch'
  # get 'ads/favorite_serch'
  # get 'ads/apply'
  # get 'contacts/new'
  # get 'completed_deals/index'
  # get 'completed_deals/show'
  # get 'deallings/index'
  # get 'deallings/show'
  # get 'deallings/edit'
  # get 'deal_details/index'
  # namespace :drivers do
  #   get 'transfer_informations/index'
  #   get 'transfer_informations/edit'
  # end
  # namespace :drivers do
  #   get 'car_informations/index'
  #   get 'car_informations/edit'
  # end
  # get 'drivers/index'
  # get 'drivers/edit'
  # namespace :ad_clients do
  #   get 'complete_deals/index'
  #   get 'complete_deals/show'
  # end
  # namespace :ad_clients do
  #   get 'ads/index'
  #   get 'ads/new'
  #   get 'ads/edit'
  # end
  # get 'ad_clients/index'
  # get 'ad_clients/edit'
  # namespace :admin do
  #   get 'contacts/index'
  #   get 'contacts/show'
  # end
  # namespace :admin do
  #   get 'genres/index'
  #   get 'genres/edit'
  # end
  # namespace :admin do
  #   get 'drivers/index'
  #   get 'drivers/show'
  # end
  # namespace :admin do
  #   get 'ad_clients/index'
  #   get 'ad_clients/show'
  # end