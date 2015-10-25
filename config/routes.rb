require 'api_constraints'

Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  namespace :api, defaults: {format: 'json'} do
    scope module: :v1 , parameter: {name: 'id' , value: 1},constraints: ApiConstraints.new(version: 1, default: true) do
      resources :podcasts do
         get :show
      end
      resources :users do
        get :following, :followers
      end
    end
  end
  resources :users do
    member do
      get :following, :followers
    end
  end
  resources :users do
    member do
     get :podcasts
   end
 end
 resources :podcasts do
  member do
    post :follow
    post :unfollow
  end
end
resources :podcasts, 	  		only: [:index, :show,   :new, :create, :destroy]
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
