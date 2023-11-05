Rails.application.routes.draw do
  devise_for :users
  resources :products do
    member do
      get "cart", to: "cart#show"
      # post "cart/add"
      post "cart/remove"
      post :add_to_cart
    end
  end
  resources :orders, only: [:new, :create, :show]
  resources :carts, only: [:show, :create]
  
  root to: "home#index"
end


# index
# show
# new
# create
# edit
# update
# destroy