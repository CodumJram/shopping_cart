class OfferGetProductsController < ApplicationController

    def index
        @offer_get_products = OfferGetProduct.all
        render json: @offer_get_products , status: 200
    end

    def show
        @offer_get_product = OfferGetProduct.find(params[:id])
        render json: @offer_get_product, status: 200
    end

    def create
        @offer = Offer.find(params[:offer_id])
        @offer_get_product = @offer.offer_get_products.new(params_offer_get_product)

        if @offer_get_product.save 
            render json: @offer_get_product, status: 201
        else
            render json: @offer_get_product.errors, status: :unprocessable_entity
        end
    end
    
    def destroy
        @offer = Offer.find(params[:offer_id])
        @offer_get_product = @offer.offer_get_products.find(params[:id])

        if @offer_get_product.destroy
            render json: @offer_get_product, status: 200
        else
            render json: @offer_get_product.errors, status: :unprocessable_entity
        end
    end

    def update
        @offer = Offer.find(params[:offer_id])
        @offer_get_product = @offer.offer_get_products.find(params[:id])

        if @offer_get_product.update(params_offer_get_product)
            render json: @offer_get_product, status: 200
        else
            render json: @offer_get_product.errors, status: 422
        end
    end
    
    private
    def params_offer_get_product
        params.permit(:free_quantity, :product_id, :offer_get_product_id)
    end    
end
