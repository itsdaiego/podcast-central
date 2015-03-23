Rails.application.routes.draw do
	resources :users
	resources :podcasts
	resources :sessions,      only: [:new, :create, :destroy]
	root to: 'static_pages#home'
	match '/about',  to: 'static_pages#about', via: 'get'
	match '/contact',  to: 'static_pages#contact', via: 'get'
	match '/community',  to: 'users#community',   via: 'get'
	match '/signup',  to: 'users#new',            via: 'get'
	match '/signin',  to: 'sessions#new',         via: 'get'
	match '/signout', to: 'sessions#destroy',     via: 'delete'
end

