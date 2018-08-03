Rails.application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users

  resources :users

  get '/index', to: 'application#index'
  get '/sign_in', to: 'application#sign_in'
  get '/sign_up', to: 'application#sign_up'
  root :to => "application#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
