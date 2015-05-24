Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :users do
    member do
        get :following, :followers
    end
  end
	resources :podcasts, 	  		only: [:index, :new, :create, :destroy]
	resources :sessions,   		    only: [:new, :create, :destroy]
  	resources :relationships,       only: [:create, :destroy]
	root to: 'static_pages#home'
	match '/about',  to: 'static_pages#about', via: 'get'
	match '/contact',  to: 'static_pages#contact', via: 'get'
	match '/community',  to: 'users#community',   via: 'get'
	match '/signup',  to: 'users#new',            via: 'get'
	match '/signin',  to: 'sessions#new',         via: 'get'
	match '/signout', to: 'sessions#destroy',     via: 'delete'
  #get '/signin',  to: 'device/sessions#new'
  #delete '/signout', to: 'device/sessions#destroy'
end
