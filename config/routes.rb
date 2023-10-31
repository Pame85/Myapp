Rails.application.routes.draw do
  devise_for :users
  resources :products
  resources :orders, only: [:create]
  root to: "home#index"
end


# index
# show
# new
# create
# edit
# update
# destroy