class OfferGetProductsController < ApplicationController
    
    def index
        @offer = Offer.find(params[:offer_id])
        @offer_get_products = @offer.offer_get_products
        render json: @offer_get_products , status: ok_status
    end

    def show
        @offer = Offer.find(params[:offer_id])
        @offer_get_product = @offer.offer_get_products.find(params[:id])
        render json: @offer_get_product, status: ok_status
    end

    def create
        #checks if the free product exists
        @free_product_id = params_offer_get_product[:free_product_id]
        @free_product = Product.find(@free_product_id)

        @offer = Offer.find(params[:offer_id])
        @offer_get_product = @offer.offer_get_products.new(
                                                    params_offer_get_product)
        
        offer_get_product_save = @offer_get_product.save
        action_validation(offer_get_product_save, @offer_get_product, 
                                                        created_status)
    end
    
    def destroy
        @offer = Offer.find(params[:offer_id])
        @offer_get_product = @offer.offer_get_products.find(params[:id])

        offer_get_product_destroy = @offer_get_product.destroy
        action_validation(offer_get_product_destroy, @offer_get_product, 
                                                                ok_status)
    end

    def update
        @offer = Offer.find(params[:offer_id])
        @offer_get_product = @offer.offer_get_products.find(params[:id])

        offer_get_product_update = @offer_get_product.update(
                                                params_offer_get_product)
        action_validation(offer_get_product_update, @offer_get_product, 
                                                                ok_status)  
    end
    
    private
        # Only allow the white list parameters.
        def params_offer_get_product
            params.permit(:free_quantity, :free_product_id)
        end    
end
