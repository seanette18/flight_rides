Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root :to => "trips#index"
  resources :locations
  resources :trips
  devise_for :riders
  resources :riders
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
