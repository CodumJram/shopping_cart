class OfferUnitsPricesController < ApplicationController

    def index
        @offer = Offer.find(params[:offer_id])
        @offer_units_prices = @offer.offer_units_prices
        render json: @offer_units_prices , status: ok_status
    end

    def show
        @offer = Offer.find(params[:offer_id])
        @offer_units_price = @offer.offer_units_prices.find(params[:id])
        render json: @offer_units_price, status: ok_status
    end

    def create
        @offer = Offer.find(params[:offer_id])
        @offer_units_price = @offer.offer_units_prices.new(
                                                    params_offer_units_price)
        
        offer_units_price_save = @offer_units_price.save
        action_validation(offer_units_price_save, @offer_units_price, 
                                                        created_status)
    end
    
    def destroy
        @offer = Offer.find(params[:offer_id])
        @offer_units_price = @offer.offer_units_prices.find(params[:id])

        offer_units_price_destroy = @offer_units_price.destroy
        action_validation(offer_units_price_destroy, @offer_units_price, 
                                                                ok_status)
    end

    def update
        @offer = Offer.find(params[:offer_id])
        @offer_units_price = @offer.offer_units_prices.find(params[:id])

        offer_units_price_update = @offer_units_price.update(
                                                params_offer_units_price)
        action_validation(offer_units_price_update, @offer_units_price, 
                                                                ok_status)  
    end
    
    private
    def params_offer_units_price
        params.permit(:fixed_price)
    end    
end
