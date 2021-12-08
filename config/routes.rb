Rails.application.routes.draw do
  resources :trips
  devise_for :riders
  resources :riders
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
