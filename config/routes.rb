Rails.application.routes.draw do
  resources :admins
  resources :items
  resources :order_items
  resources :orders
  resources :customers

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
