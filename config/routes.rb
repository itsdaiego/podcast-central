Rails.application.routes.draw do

	root to: 'static_pages#home'

	match '/podcasts',  to: 'users#podcast',      via: 'get'
	match '/community',  to: 'users#community',   via: 'get'
	match '/signup',  to: 'users#new',            via: 'get'
	match '/signin',  to: 'sessions#new',         via: 'get'
	match '/signout', to: 'sessions#destroy',     via: 'delete'
end

	