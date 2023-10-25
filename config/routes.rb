Rails.application.routes.draw do
  devise_for :users
  resources :products
  root to: "home#index"
end


# index
# show
# new
# create
# edit
# update
# destroy