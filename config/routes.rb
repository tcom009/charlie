Rails.application.routes.draw do
  resources :devices
  resources :device_types
  resources :rooms
  resources :homes
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
