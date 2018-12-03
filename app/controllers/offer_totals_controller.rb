class OfferTotalsController < ApplicationController

    def index
        @offer = Offer.find(params[:offer_id])
        @offer_totals = @offer.offer_totals
        render json: @offer_totals , status: ok_status
    end

    def show
        @offer = Offer.find(params[:offer_id])
        @offer_total = @offer.offer_totals.find(params[:id])
        render json: @offer_total, status: ok_status
    end

    def create
        @offer = Offer.find(params[:offer_id])
        @offer_total = @offer.offer_totals.new(params_offer_total)
        
        offer_total_save = @offer_total.save
        action_validation(offer_total_save, @offer_total, created_status)
    end
    
    def destroy
        @offer = Offer.find(params[:offer_id])
        @offer_total = @offer.offer_totals.find(params[:id])

        offer_total_destroy = @offer_total.destroy
        action_validation(offer_total_destroy, @offer_total, ok_status)
    end

    def update
        @offer = Offer.find(params[:offer_id])
        @offer_total = @offer.offer_totals.find(params[:id])

        offer_total_update = @offer_total.update(params_offer_total)
        action_validation(offer_total_update, @offer_total, ok_status)  
    end
    
    private
        # Only allow the white list parameters.
        def params_offer_total
            params.permit(:percentage_discount)
        end    
end
