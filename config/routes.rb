Rails.application.routes.draw do
  resources :owners
  resources :items
  resources :order_items
  resources :orders
  resources :customers

  namespace :api do
    namespace :v1 do
      post '/login', to: 'auth#create'

    end
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
