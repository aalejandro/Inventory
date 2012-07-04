Inventory::Application.routes.draw do

  resources :sites

  resources :products

  resources :manufacturers

  resources :rings

  devise_for :users, skip: :registrations

  ActiveAdmin.routes(self)
  devise_for :admin_users, ActiveAdmin::Devise.config

  resource :pages, only: [:home]

  root :to => 'pages#home'
end
#== Route Map
# Generated on 03 Jul 2012 20:55
#
#                            POST       /sites(.:format)                   sites#create
#                   new_site GET        /sites/new(.:format)               sites#new
#                  edit_site GET        /sites/:id/edit(.:format)          sites#edit
#                       site GET        /sites/:id(.:format)               sites#show
#                            PUT        /sites/:id(.:format)               sites#update
#                            DELETE     /sites/:id(.:format)               sites#destroy
#                   products GET        /products(.:format)                products#index
#                            POST       /products(.:format)                products#create
#                new_product GET        /products/new(.:format)            products#new
#               edit_product GET        /products/:id/edit(.:format)       products#edit
#                    product GET        /products/:id(.:format)            products#show
#                            PUT        /products/:id(.:format)            products#update
#                            DELETE     /products/:id(.:format)            products#destroy
#              manufacturers GET        /manufacturers(.:format)           manufacturers#index
#                            POST       /manufacturers(.:format)           manufacturers#create
#           new_manufacturer GET        /manufacturers/new(.:format)       manufacturers#new
#          edit_manufacturer GET        /manufacturers/:id/edit(.:format)  manufacturers#edit
#               manufacturer GET        /manufacturers/:id(.:format)       manufacturers#show
#                            PUT        /manufacturers/:id(.:format)       manufacturers#update
#                            DELETE     /manufacturers/:id(.:format)       manufacturers#destroy
#                      rings GET        /rings(.:format)                   rings#index
#                            POST       /rings(.:format)                   rings#create
#                   new_ring GET        /rings/new(.:format)               rings#new
#                  edit_ring GET        /rings/:id/edit(.:format)          rings#edit
#                       ring GET        /rings/:id(.:format)               rings#show
#                            PUT        /rings/:id(.:format)               rings#update
#                            DELETE     /rings/:id(.:format)               rings#destroy
#           new_user_session GET        /users/sign_in(.:format)           devise/sessions#new
#               user_session POST       /users/sign_in(.:format)           devise/sessions#create
#       destroy_user_session DELETE     /users/sign_out(.:format)          devise/sessions#destroy
#              user_password POST       /users/password(.:format)          devise/passwords#create
#          new_user_password GET        /users/password/new(.:format)      devise/passwords#new
#         edit_user_password GET        /users/password/edit(.:format)     devise/passwords#edit
#                            PUT        /users/password(.:format)          devise/passwords#update
#            admin_dashboard            /admin(.:format)                   admin/dashboard#index
#                admin_users GET        /admin/users(.:format)             admin/users#index
#                            POST       /admin/users(.:format)             admin/users#create
#             new_admin_user GET        /admin/users/new(.:format)         admin/users#new
#            edit_admin_user GET        /admin/users/:id/edit(.:format)    admin/users#edit
#                 admin_user GET        /admin/users/:id(.:format)         admin/users#show
#                            PUT        /admin/users/:id(.:format)         admin/users#update
#                            DELETE     /admin/users/:id(.:format)         admin/users#destroy
#             admin_comments GET        /admin/comments(.:format)          admin/comments#index
#                            POST       /admin/comments(.:format)          admin/comments#create
#          new_admin_comment GET        /admin/comments/new(.:format)      admin/comments#new
#         edit_admin_comment GET        /admin/comments/:id/edit(.:format) admin/comments#edit
#              admin_comment GET        /admin/comments/:id(.:format)      admin/comments#show
#                            PUT        /admin/comments/:id(.:format)      admin/comments#update
#                            DELETE     /admin/comments/:id(.:format)      admin/comments#destroy
#     new_admin_user_session GET        /admin/login(.:format)             active_admin/devise/sessions#new
#         admin_user_session POST       /admin/login(.:format)             active_admin/devise/sessions#create
# destroy_admin_user_session DELETE|GET /admin/logout(.:format)            active_admin/devise/sessions#destroy
#        admin_user_password POST       /admin/password(.:format)          active_admin/devise/passwords#create
#    new_admin_user_password GET        /admin/password/new(.:format)      active_admin/devise/passwords#new
#   edit_admin_user_password GET        /admin/password/edit(.:format)     active_admin/devise/passwords#edit
#                            PUT        /admin/password(.:format)          active_admin/devise/passwords#update
#                       root            /                                  pages#home
