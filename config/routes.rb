Rails.application.routes.draw do

  get 'static_pages/show'
  get 'pages/static_lp'
  root to: "items#index"
  devise_for :users

  resources :items




resources :carts
resources :items
resources :charges





  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
