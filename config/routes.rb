# == Route Map
#
#                       Prefix Verb   URI Pattern                                                       Controller#Action
#                         root GET    /                                                                 home#index
#     content_manager_products GET    /content_managers/:content_manager_id/products(.:format)          products#index
#                              POST   /content_managers/:content_manager_id/products(.:format)          products#create
#  new_content_manager_product GET    /content_managers/:content_manager_id/products/new(.:format)      products#new
# edit_content_manager_product GET    /content_managers/:content_manager_id/products/:id/edit(.:format) products#edit
#      content_manager_product GET    /content_managers/:content_manager_id/products/:id(.:format)      products#show
#                              PATCH  /content_managers/:content_manager_id/products/:id(.:format)      products#update
#                              PUT    /content_managers/:content_manager_id/products/:id(.:format)      products#update
#                              DELETE /content_managers/:content_manager_id/products/:id(.:format)      products#destroy
#             content_managers GET    /content_managers(.:format)                                       content_managers#index
#                              POST   /content_managers(.:format)                                       content_managers#create
#          new_content_manager GET    /content_managers/new(.:format)                                   content_managers#new
#         edit_content_manager GET    /content_managers/:id/edit(.:format)                              content_managers#edit
#              content_manager GET    /content_managers/:id(.:format)                                   content_managers#show
#                              PATCH  /content_managers/:id(.:format)                                   content_managers#update
#                              PUT    /content_managers/:id(.:format)                                   content_managers#update
#                              DELETE /content_managers/:id(.:format)                                   content_managers#destroy
#                     products GET    /products(.:format)                                               products#index
#                              POST   /products(.:format)                                               products#create
#                  new_product GET    /products/new(.:format)                                           products#new
#                 edit_product GET    /products/:id/edit(.:format)                                      products#edit
#                      product GET    /products/:id(.:format)                                           products#show
#                              PATCH  /products/:id(.:format)                                           products#update
#                              PUT    /products/:id(.:format)                                           products#update
#                              DELETE /products/:id(.:format)                                           products#destroy

Rails.application.routes.draw do
  
  root 'home#index'
  
  resources :content_managers do
    resources :products
  end

  resources :products
end
