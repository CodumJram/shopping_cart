class offer_get_productGetProductsController < ApplicationController

    def index
        
        offer_get_products = OfferGetProduct.all
        render json: offer_get_products , status: 200
    end

    def show

        offer_get_product = OfferGetProduct.find(params[:id])
        render json: offer_get_product, status: 200
    end

    def create
        content_manager = ContentManager.find(params[:content_manager_id])
        offer_get_product = content_manager.offer_get_products.new(params_offer_get_product)

        if offer_get_product.save 
            render json: offer_get_product, status: 201
        else
            render json: offer_get_product.errors, status: :unprocessable_entity
        end
    end

    def destroy
        content_manager = ContentManager.find(params[:content_manager_id])
        
        offer_get_product = content_manager.offer_get_products.find(params[:id])
        offer_get_product.destroy
            render json: offer_get_product, status: 200
    end

    def update
        content_manager = ContentManager.find(params[:content_manager_id])
        offer_get_product = content_manager.offer_get_products.find(params[:id])
        
        if offer_get_product.update(params_offer_get_product)
            render json: offer_get_product, status: 200
        else
            render json: offer_get_product.errors, status: 422
        end

    end

    def params_offer_get_product_get_product
        params.permit(:free_quantity, :product_id)
    end    
end
