class OffersController < ApplicationController

    def index
        offers = Offer.all
        render json: offers , status: 200
    end

    def show
        offer = Offer.find(params[:id])
        render json: offer, status: 200
    end

    def for_product_or_shopping_cart
        
        product = Product.find_by(sku: params[:product_id])
        shopping_cart = ShoppingCart.find_by(id: params[:shopping_cart_id])
        
        if product
            return product
        elsif shopping_cart
            return shopping_cart
        else
            raise "error"
        end
    end

    def create

        create_for = for_product_or_shopping_cart
        offer = create_for.offers.new(params_offer)

        if offer.save 
            render json: offer, status: 201
        else
            render json: offer.errors, status: :unprocessable_entity
        end
    end
    
    def destroy

        destroy_for = for_product_or_shopping_cart
        offer = destroy_for.offers.find(params[:id])

        if offer.destroy
            render json: offer, status: 200
        else
            render json: offer.errors, status: :unprocessable_entity
        end
    end

    def update
        update_for = for_product_or_shopping_cart
        offer = update_for.offers.find(params[:id])

        if offer.update(params_offer)
            render json: offer, status: 200
        else
            render json: offer.errors, status: 422
        end

    end

    def params_offer
        params.permit(:name, :start, :end, :product_quantity,
             :description, :content_manager_id, :product_id, :shopping_cart_id)
    end

end
