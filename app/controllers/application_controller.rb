class ApplicationController < ActionController::Base
  include ActionController::MimeResponds

  helper_method :authorize_session

  # authorize a session for the shopping carts made by the user
  def authorize_session
    @shopping_cart = ShoppingCart.find_by(id: session[:shopping_cart])
    
    if !@shopping_cart
      redirect_to "home#index", status: 403
    end
  end
end
