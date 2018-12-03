class ShoppingCartController < ApplicationController

    before_action :authorize_session_cart, only: [:show, :destroy, :update]
    
    def index
        @shopping_carts = ShoppingCart.all
        render json: @shopping_carts, status: ok_status
    end

    def show 
        @shopping_cart = ShoppingCart.find_by_id(session[:shopping_cart])
        render json: @shopping_cart, status: ok_status
    end

    def create
        @shopping_cart = ShoppingCart.new(params_cart)
        
        shopping_cart_save = @shopping_cart.save
        action_validation(shopping_cart_save, @shopping_cart, created_status)
        session[:shopping_cart] = @shopping_cart.id
    end

    def destroy
        @shopping_cart = ShoppingCart.find_by_id(session[:shopping_cart])
        
        shopping_cart_destroy = @shopping_cart.destroy
        action_validation(shopping_cart_destroy, @shopping_cart, ok_status)
        session[:shopping_cart] = nil
    end

    private
        # Only allow the white list parameters.
        def params_cart
            params.permit()
        end
end
