class ShoppingCartProductsController < ApplicationController

    before_action :authorize_session, only: [:add_product, :index, :destroy, :update]

    def authorize_session
        @shopping_cart = ShoppingCart.find_by(id: session[:shopping_cart])
        if @shopping_cart
            render json: "authenticated", status: 200
        else
            render json: "access-forbidden", status: 403
            redirect_to "home#index"
        end
    end

    def index
        @shopping_cart_products = ProductsShoppingCart.all
        render json: @shopping_cart_products
    end

    def add_product
        shopping_cart = ShoppingCart.find_by_id(session[:shopping_cart])
        product = Product.find(params[:product_id])
        @shopping_cart_products = ProductsShoppingCart.new(params_shopping_cart_products)
        
        if @shopping_cart_products.save
            render json: @shopping_cart_products, status: 201
        else
            render json: @shopping_cart_products.errors, status: :unprocessable_entity
        end
        
    end

    def destroy
        @shopping_cart_products = ShoppingCart.find(params :shopping_cart_on_product_id)
        
        if @shopping_cart_products.destroy
            render json: @shopping_cart_products, status: 200
        else 
            render json: @shopping_cart_products.errors, status: :unprocessable_entity
        end
    end

    def update
        @shopping_cart_products = ShoppingCart.find(params :shopping_cart_on_product_id)
        
        if @shopping_cart_products.update(params_shopping_cart_products)
            render json: @shopping_cart_products, status: 200
        else 
            render json: @shopping_cart_products.errors, status: :unprocessable_entity
        end
    end

    def params_shopping_cart_products
        params.permit(:product_quantity, :product_id, :shopping_cart_id)
    end
end
