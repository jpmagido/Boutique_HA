Rails.application.routes.draw do

  get 'static_pages/show'
  get 'static_pages/order' 
  post 'static_pages/order'


  root to: "items#index"
  devise_for :users

  resources :items


  resources :carts






resources :charges





  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end

