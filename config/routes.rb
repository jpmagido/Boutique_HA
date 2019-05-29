Rails.application.routes.draw do
  get "/pages/:page" => "pages#show"
  root to: "items#index"
  devise_for :users
  resources :items
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
