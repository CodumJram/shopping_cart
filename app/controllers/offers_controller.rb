class OffersController < ApplicationController

    def index
        offers = O  ffer.all
        render json: offers , status: 200
    end

    def show
        offer = Offer.find(params[:id])
        render json: offer, status: 200
    end

    def create
        content_manager = ContentManager.find(params[:content_manager_id])
        offer = content_manager.offers.new(params_offer)

        if offer.save 
            render json: offer, status: 201
        else
            render json: offer.errors, status: :unprocessable_entity
        end
    end

    def destroy
        content_manager = ContentManager.find(params[:content_manager_id])
        
        offer = content_manager.offers.find(params[:id])
        offer.destroy
            render json: offer, status: 200
    end

    def update
        content_manager = ContentManager.find(params[:content_manager_id])
        offer = content_manager.offers.find(params[:id])
        
        if offer.update(params_offer)
            render json: offer, status: 200
        else
            render json: offer.errors, status: 422
        end

    end

    def params_offer
        params.permit(:name, :start, :end, :product_quantity,
             :description, :content_manager_id)
    end

end
