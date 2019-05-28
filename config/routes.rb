Rails.application.routes.draw do

  root to: "items#index"
  devise_for :users

  resources :items
<<<<<<< HEAD
  resources :carts
=======




resources :items
resources :charges




>>>>>>> a65adbce3229f7328db86d2a4cff101c9ad9f371
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end

