class ShoppingCartController < ApplicationController

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

        if @shopping_cart.save 
            session[:shopping_cart] = @shopping_cart.id
            render json: {shopping_cart: @shopping_cart,
                            session: session}, status: 201
        else
            render json: @shopping_cart.errors, status: :unprocessable_entity
        end
    end

    def destroy
        @shopping_cart = ShoppingCart.find_by(id: session[:shopping_cart])
        
        if @shopping_cart.destroy
            render json: @shopping_cart, status: 200
        else 
            render json: @shopping_cart.errors, status: :unprocessable_entity
        end
    end

    def update
        @shopping_cart = ShoppingCart.find_by(id: session[:shopping_cart])
        
        if @shopping_cart.update(params_product)
            render json: @shopping_cart, status: 200
        else
            render json: @shopping_cart.errors, status: 422
        end
    end

    def params_cart
        params.permit(:session)
    end
end
