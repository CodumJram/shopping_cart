# == Route Map
#
#                                               Prefix Verb   URI Pattern                                                                                                       Controller#Action
#                                                 root GET    /                                                                                                                 home#index
#             content_manager_product_offer_conditions GET    /content_managers/:content_manager_id/products/:product_id/offers/:offer_id/conditions(.:format)                  conditions#index
#                                                      POST   /content_managers/:content_manager_id/products/:product_id/offers/:offer_id/conditions(.:format)                  conditions#create
#          new_content_manager_product_offer_condition GET    /content_managers/:content_manager_id/products/:product_id/offers/:offer_id/conditions/new(.:format)              conditions#new
#         edit_content_manager_product_offer_condition GET    /content_managers/:content_manager_id/products/:product_id/offers/:offer_id/conditions/:id/edit(.:format)         conditions#edit
#              content_manager_product_offer_condition GET    /content_managers/:content_manager_id/products/:product_id/offers/:offer_id/conditions/:id(.:format)              conditions#show
#                                                      PATCH  /content_managers/:content_manager_id/products/:product_id/offers/:offer_id/conditions/:id(.:format)              conditions#update
#                                                      PUT    /content_managers/:content_manager_id/products/:product_id/offers/:offer_id/conditions/:id(.:format)              conditions#update
#                                                      DELETE /content_managers/:content_manager_id/products/:product_id/offers/:offer_id/conditions/:id(.:format)              conditions#destroy
#     content_manager_product_offer_offer_get_products GET    /content_managers/:content_manager_id/products/:product_id/offers/:offer_id/offer_get_products(.:format)          offer_get_products#index
#                                                      POST   /content_managers/:content_manager_id/products/:product_id/offers/:offer_id/offer_get_products(.:format)          offer_get_products#create
#  new_content_manager_product_offer_offer_get_product GET    /content_managers/:content_manager_id/products/:product_id/offers/:offer_id/offer_get_products/new(.:format)      offer_get_products#new
# edit_content_manager_product_offer_offer_get_product GET    /content_managers/:content_manager_id/products/:product_id/offers/:offer_id/offer_get_products/:id/edit(.:format) offer_get_products#edit
#      content_manager_product_offer_offer_get_product GET    /content_managers/:content_manager_id/products/:product_id/offers/:offer_id/offer_get_products/:id(.:format)      offer_get_products#show
#                                                      PATCH  /content_managers/:content_manager_id/products/:product_id/offers/:offer_id/offer_get_products/:id(.:format)      offer_get_products#update
#                                                      PUT    /content_managers/:content_manager_id/products/:product_id/offers/:offer_id/offer_get_products/:id(.:format)      offer_get_products#update
#                                                      DELETE /content_managers/:content_manager_id/products/:product_id/offers/:offer_id/offer_get_products/:id(.:format)      offer_get_products#destroy
#     content_manager_product_offer_offer_units_prices GET    /content_managers/:content_manager_id/products/:product_id/offers/:offer_id/offer_units_prices(.:format)          offer_units_prices#index
#                                                      POST   /content_managers/:content_manager_id/products/:product_id/offers/:offer_id/offer_units_prices(.:format)          offer_units_prices#create
#  new_content_manager_product_offer_offer_units_price GET    /content_managers/:content_manager_id/products/:product_id/offers/:offer_id/offer_units_prices/new(.:format)      offer_units_prices#new
# edit_content_manager_product_offer_offer_units_price GET    /content_managers/:content_manager_id/products/:product_id/offers/:offer_id/offer_units_prices/:id/edit(.:format) offer_units_prices#edit
#      content_manager_product_offer_offer_units_price GET    /content_managers/:content_manager_id/products/:product_id/offers/:offer_id/offer_units_prices/:id(.:format)      offer_units_prices#show
#                                                      PATCH  /content_managers/:content_manager_id/products/:product_id/offers/:offer_id/offer_units_prices/:id(.:format)      offer_units_prices#update
#                                                      PUT    /content_managers/:content_manager_id/products/:product_id/offers/:offer_id/offer_units_prices/:id(.:format)      offer_units_prices#update
#                                                      DELETE /content_managers/:content_manager_id/products/:product_id/offers/:offer_id/offer_units_prices/:id(.:format)      offer_units_prices#destroy
#           content_manager_product_offer_offer_totals GET    /content_managers/:content_manager_id/products/:product_id/offers/:offer_id/offer_totals(.:format)                offer_totals#index
#                                                      POST   /content_managers/:content_manager_id/products/:product_id/offers/:offer_id/offer_totals(.:format)                offer_totals#create
#        new_content_manager_product_offer_offer_total GET    /content_managers/:content_manager_id/products/:product_id/offers/:offer_id/offer_totals/new(.:format)            offer_totals#new
#       edit_content_manager_product_offer_offer_total GET    /content_managers/:content_manager_id/products/:product_id/offers/:offer_id/offer_totals/:id/edit(.:format)       offer_totals#edit
#            content_manager_product_offer_offer_total GET    /content_managers/:content_manager_id/products/:product_id/offers/:offer_id/offer_totals/:id(.:format)            offer_totals#show
#                                                      PATCH  /content_managers/:content_manager_id/products/:product_id/offers/:offer_id/offer_totals/:id(.:format)            offer_totals#update
#                                                      PUT    /content_managers/:content_manager_id/products/:product_id/offers/:offer_id/offer_totals/:id(.:format)            offer_totals#update
#                                                      DELETE /content_managers/:content_manager_id/products/:product_id/offers/:offer_id/offer_totals/:id(.:format)            offer_totals#destroy
#                       content_manager_product_offers GET    /content_managers/:content_manager_id/products/:product_id/offers(.:format)                                       offers#index
#                                                      POST   /content_managers/:content_manager_id/products/:product_id/offers(.:format)                                       offers#create
#                    new_content_manager_product_offer GET    /content_managers/:content_manager_id/products/:product_id/offers/new(.:format)                                   offers#new
#                   edit_content_manager_product_offer GET    /content_managers/:content_manager_id/products/:product_id/offers/:id/edit(.:format)                              offers#edit
#                        content_manager_product_offer GET    /content_managers/:content_manager_id/products/:product_id/offers/:id(.:format)                                   offers#show
#                                                      PATCH  /content_managers/:content_manager_id/products/:product_id/offers/:id(.:format)                                   offers#update
#                                                      PUT    /content_managers/:content_manager_id/products/:product_id/offers/:id(.:format)                                   offers#update
#                                                      DELETE /content_managers/:content_manager_id/products/:product_id/offers/:id(.:format)                                   offers#destroy
#                             content_manager_products GET    /content_managers/:content_manager_id/products(.:format)                                                          products#index
#                                                      POST   /content_managers/:content_manager_id/products(.:format)                                                          products#create
#                          new_content_manager_product GET    /content_managers/:content_manager_id/products/new(.:format)                                                      products#new
#                         edit_content_manager_product GET    /content_managers/:content_manager_id/products/:id/edit(.:format)                                                 products#edit
#                              content_manager_product GET    /content_managers/:content_manager_id/products/:id(.:format)                                                      products#show
#                                                      PATCH  /content_managers/:content_manager_id/products/:id(.:format)                                                      products#update
#                                                      PUT    /content_managers/:content_manager_id/products/:id(.:format)                                                      products#update
#                                                      DELETE /content_managers/:content_manager_id/products/:id(.:format)                                                      products#destroy
#                                     content_managers GET    /content_managers(.:format)                                                                                       content_managers#index
#                                                      POST   /content_managers(.:format)                                                                                       content_managers#create
#                                  new_content_manager GET    /content_managers/new(.:format)                                                                                   content_managers#new
#                                 edit_content_manager GET    /content_managers/:id/edit(.:format)                                                                              content_managers#edit
#                                      content_manager GET    /content_managers/:id(.:format)                                                                                   content_managers#show
#                                                      PATCH  /content_managers/:id(.:format)                                                                                   content_managers#update
#                                                      PUT    /content_managers/:id(.:format)                                                                                   content_managers#update
#                                                      DELETE /content_managers/:id(.:format)                                                                                   content_managers#destroy
#                                       product_offers GET    /products/:product_id/offers(.:format)                                                                            offers#index
#                                                      POST   /products/:product_id/offers(.:format)                                                                            offers#create
#                                    new_product_offer GET    /products/:product_id/offers/new(.:format)                                                                        offers#new
#                                   edit_product_offer GET    /products/:product_id/offers/:id/edit(.:format)                                                                   offers#edit
#                                        product_offer GET    /products/:product_id/offers/:id(.:format)                                                                        offers#show
#                                                      PATCH  /products/:product_id/offers/:id(.:format)                                                                        offers#update
#                                                      PUT    /products/:product_id/offers/:id(.:format)                                                                        offers#update
#                                                      DELETE /products/:product_id/offers/:id(.:format)                                                                        offers#destroy
#         product_shopping_cart_shopping_cart_products GET    /products/:product_id/shopping_cart/:shopping_cart_id/shopping_cart_products(.:format)                            shopping_cart_products#index
#                                                      POST   /products/:product_id/shopping_cart/:shopping_cart_id/shopping_cart_products(.:format)                            shopping_cart_products#create
#      new_product_shopping_cart_shopping_cart_product GET    /products/:product_id/shopping_cart/:shopping_cart_id/shopping_cart_products/new(.:format)                        shopping_cart_products#new
#     edit_product_shopping_cart_shopping_cart_product GET    /products/:product_id/shopping_cart/:shopping_cart_id/shopping_cart_products/:id/edit(.:format)                   shopping_cart_products#edit
#          product_shopping_cart_shopping_cart_product GET    /products/:product_id/shopping_cart/:shopping_cart_id/shopping_cart_products/:id(.:format)                        shopping_cart_products#show
#                                                      PATCH  /products/:product_id/shopping_cart/:shopping_cart_id/shopping_cart_products/:id(.:format)                        shopping_cart_products#update
#                                                      PUT    /products/:product_id/shopping_cart/:shopping_cart_id/shopping_cart_products/:id(.:format)                        shopping_cart_products#update
#                                                      DELETE /products/:product_id/shopping_cart/:shopping_cart_id/shopping_cart_products/:id(.:format)                        shopping_cart_products#destroy
#                          product_shopping_cart_index GET    /products/:product_id/shopping_cart(.:format)                                                                     shopping_cart#index
#                                                      POST   /products/:product_id/shopping_cart(.:format)                                                                     shopping_cart#create
#                            new_product_shopping_cart GET    /products/:product_id/shopping_cart/new(.:format)                                                                 shopping_cart#new
#                           edit_product_shopping_cart GET    /products/:product_id/shopping_cart/:id/edit(.:format)                                                            shopping_cart#edit
#                                product_shopping_cart GET    /products/:product_id/shopping_cart/:id(.:format)                                                                 shopping_cart#show
#                                                      PATCH  /products/:product_id/shopping_cart/:id(.:format)                                                                 shopping_cart#update
#                                                      PUT    /products/:product_id/shopping_cart/:id(.:format)                                                                 shopping_cart#update
#                                                      DELETE /products/:product_id/shopping_cart/:id(.:format)                                                                 shopping_cart#destroy
#                                             products GET    /products(.:format)                                                                                               products#index
#                                                      POST   /products(.:format)                                                                                               products#create
#                                          new_product GET    /products/new(.:format)                                                                                           products#new
#                                         edit_product GET    /products/:id/edit(.:format)                                                                                      products#edit
#                                              product GET    /products/:id(.:format)                                                                                           products#show
#                                                      PATCH  /products/:id(.:format)                                                                                           products#update
#                                                      PUT    /products/:id(.:format)                                                                                           products#update
#                                                      DELETE /products/:id(.:format)                                                                                           products#destroy

Rails.application.routes.draw do
  
  root 'home#index'
  
  resources :content_managers do
    resources :products do
      resources :offers do
        resources :conditions
        resources :offer_get_products
        resources :offer_units_prices
        resources :offer_totals
      end
    end
  end

  post 'products/:product_id/shopping_cart/:shopping_cart_id/add_product' => 'shopping_cart_products#add_product'
  resources :products do
    resources :offers
    resources :shopping_cart do
      resources :shopping_cart_products
    end
  end

end
