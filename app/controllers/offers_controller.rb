class OffersController < ApplicationController

    def index
        @offers = Offer.all
        render json: @offers , status: ok_status
    end

    def show
        @offer = Offer.find(params[:id])
        render json: @offer, status: ok_status
    end

    def create
        @create_for = for_product_or_shopping_cart
        @offer = @create_for.offers.new(params_offer)
        
        offer_save = @offer.save
        action_validation(offer_save, @offer, created_status)
    end
    
    def destroy
        @destroy_for = for_product_or_shopping_cart
        @offer = @destroy_for.offers.find(params[:id])
        
        offer_destroy = @offer.destroy
        action_validation(offer_destroy, @offer, ok_status)
    end

    def update
        @update_for = for_product_or_shopping_cart
        @offer = @update_for.offers.find(params[:id])
        
        offer_update = @offer.update(params_offer)
        action_validation(offer_update, @offer, ok_status)
    end

    private
    def for_product_or_shopping_cart        
        product = Product.find_by(sku: params[:product_id])
        shopping_cart = ShoppingCart.find_by(id: params[:shopping_cart_id])
        
        if product
            return product
        elsif shopping_cart
            return shopping_cart
        else
            raise "ERROR: given id not found"
        end
    end

    def params_offer
        params.permit(:name, :start, :end, :product_quantity, :description,
                                                         :content_manager_id)
    end
end
