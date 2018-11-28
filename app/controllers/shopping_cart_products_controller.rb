class ShoppingCartProductsController < ApplicationController

    def index
        @shopping_cart_products = shopping_cart.products
        render json: @shopping_cart_products
    end

    def add_product
        shopping_cart = ShoppingCart.find_by(id: session[:shopping_cart])
        product = Product.find(params[:product_id])
        shopping_cart.products << product
        
        @shopping_cart_products = shopping_cart.products
        if @shopping_cart_products
            render json: @shopping_cart_products, status: 201
        else
            render json: @shopping_cart_products.errors, status: :unprocessable_entity
        end
    end

    def delete_product
        shopping_cart = ShoppingCart.find_by(id: session[:shopping_cart])
        product = Product.find(params[:product_id])
    end
end
