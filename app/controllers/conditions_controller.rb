class ConditionsController < ApplicationController

    def index
        @conditions = Condition.all
        render json: @conditions , status: ok_status
    end

    def show
        @condition = Condition.find(params[:id])
        render json: @condition, status: ok_status
    end

    def create
        @offer = Offer.find(params[:offer_id])
        @condition = Condition.new(params_condition)
        
        condition_save = @condition.save
        action_validation(condition_save, @condition, created_status)
    end

    def destroy
        @offer = Offer.find(params[:offer_id])
        @condition = Condition.find(params[:id])

        condition_destroy = @condition.destroy
        action_validation(condition_destroy, @condition, ok_status)
    end

    def update
        offer = Offer.find(params[:offer_id])
        @condition = Condition.find(params[:id])
        
        condition_update = @condition.update
        action_validation(condition_update, @condition, created_status)
    end
    
    private 
    def params_condition
        params.permit(:needed_money_spent, :needed_stock, :offer_id)
    end
end
