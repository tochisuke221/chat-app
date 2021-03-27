Rails.application.routes.draw do
  devise_for :users
  root to: "rooms#index"
  resources :users,only:[:update,:edit,:show]
  resources :rooms,only:[:new,:create]
end
