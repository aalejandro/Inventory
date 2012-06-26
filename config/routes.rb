Inventory::Application.routes.draw do

  devise_for :users, skip: :registrations

  ActiveAdmin.routes(self)
  devise_for :admin_users, ActiveAdmin::Devise.config

  resource :pages, only: [:home]

  root :to => 'pages#home'
end
