class ShoppingCartProductsController < ApplicationController

    before_action :authorize_session, only: [:add_product, :index, :destroy, :update]

    def index
        @shopping_cart = ShoppingCart.find_by_id(session[:shopping_cart])
        @shopping_cart_products = shopping_cart.products
        render json: @shopping_cart_products, status: ok_status
    end

    def show 
        @shopping_cart = ShoppingCart.find_by_id(session[:shopping_cart])
        @shopping_cart_products = shopping_cart.products.find(params[:id])
        render json: @shopping_cart_products, status: ok_status
    end
    
    def add_product
        @shopping_cart = ShoppingCart.find_by_id(session[:shopping_cart])
        @product = Product.find(params[:product_id])
        @shopping_cart_product = ProductsShoppingCart.new(
                                                params_shopping_cart_products)
        
        shopping_cart_product_save = @shopping_cart_product.save
        action_validation(shopping_cart_product_save, @shopping_cart_product,
                                                                created_status)
    end

    def destroy
        @shopping_cart_product = ProductsShoppingCart.find(params[:id])
        
        shopping_cart_product_destroy = @shopping_cart_product.destroy
        action_validation(shopping_cart_product_destroy, 
                                        @shopping_cart_product, ok_status)
    end

    def update
        @shopping_cart_product = ProductsShoppingCart.find(params[:id])
        
        shopping_cart_product_update = @shopping_cart_product.update(
                                            params_shopping_cart_products)
        action_validation(shopping_cart_product_update, 
                                        @shopping_cart_product, ok_status)
    ends

    def params_shopping_cart_products
        params.permit(:product_quantity, :product_id, :shopping_cart_id)
    end
end
