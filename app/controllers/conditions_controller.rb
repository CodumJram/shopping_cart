class @conditionsController < ApplicationController

    def index
        @conditions = Condition.all
        render json: @conditions , status: 200
    end

    def show
        @condition = Condition.find(params[:id])
        render json: @condition, status: 200
    end

    def create
        offer = Offer.find(params[:offer_id])
        @condition = offer.condition.new(params_condition)

        if @condition.save 
            render json: @condition, status: 201
        else
            render json: @condition.errors, status: :unprocessable_entity
        end
    end

    def destroy
        offer = Offer.find(params[:offer_id])
        @condition = Condition.find(params[:id])

        if @condition.destroy
            render json: @condition, status: 200
        else 
            render json: @condition.errors, status: :unprocessable_entity
        end
    end

    def update
        offer = Offer.find(params[:offer_id])
        @condition = Condition.find(params[:id])
        
        if @condition.update(params_@condition)
            render json: @condition, status: 200
        else
            render json: @condition.errors, status: 422
        end
    end
    
    private 
    def params_condition
        params.permit(:offer_id, :needed_money_spent, :needed_stock)
    end
    
end
