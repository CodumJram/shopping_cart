class ShoppingCartController < ApplicationController

    #before_action :authorize_session, only: [:show, :destroy, :update]
    
    def index
        @shopping_carts = ShoppingCart.all
        render json: @shopping_carts
    end

    def show 
        @shopping_cart = ShoppingCart.find_by(id: session[:shopping_cart])
        render json: @shopping_cart
    end

    def create
        @shopping_cart = ShoppingCart.new(params_cart)
        
        shopping_cart_save = @shopping_cart.save
        action_validation(shopping_cart_save, @shopping_cart, created_status)
    end

    def destroy
        @shopping_cart = ShoppingCart.find_by(id: session[:shopping_cart])
        render json: destroy
        #shopping_cart_destroy = @shopping_cart.destroy
        #action_validation(shopping_cart_destroy, @shopping_cart, ok_status)
    end

    def update
        @shopping_cart = ShoppingCart.find_by(id: session[:shopping_cart])
        
        shopping_cart_update = @shopping_cart.update
        action_validation(shopping_cart_update, @shopping_cart, ok_status)
    end

    private
    def params_cart
        params.permit(:session)
    end
end
