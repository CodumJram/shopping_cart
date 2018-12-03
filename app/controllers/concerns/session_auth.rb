module SessionAuth
    
    # authorize a session for the shopping carts made by the user
    def authorize_session_cart
        shopping_cart = ShoppingCart.find_by(id: session[:shopping_cart])

        if !session_object
            redirect_to "home#index", status: 403
        end
    end
end