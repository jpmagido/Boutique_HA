Rails.application.routes.draw do



	get 'pages/landing_page'
	get 'pages/static_lp'
	root to: "pages#landing_page"
	devise_for :users
	resources :items
	resources :users, only: [:show]
	resources :users, only: [:show] do
		resources :avatar, only: [:create]
		end
	resources :carts
	resources :items
	resources :charges


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
