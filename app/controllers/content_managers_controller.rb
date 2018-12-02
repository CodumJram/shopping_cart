class ContentManagersController < ApplicationController
    
    def index 
        @content_managers = ContentManager.all
        render json: @content_managers, status: 200
    end

    def show
        @content_manager = ContentManager.find(params[:id])
        render json: @content_manager, status: 200
    end

    def create
        @content_manager = ContentManager.new(params_content_manager)
        
        if @content_manager.save
            render json: @content_manager, status: 201
        else
            render json: @content_manager.errors, status: :unprocessable_entity
        end
    end

    def destroy
        @content_manager = ContentManager.find(params[:id])

        if @content_manager.destroy
            render json: @content_manager, status: 200
        else 
            render json: @content_manager.errors, status: :unprocessable_entity
        end
    end

    def update
        @content_manager = ContentManager.find(params[:id])

        if @content_manager.update(params_content_manager)
            render json: @content_manager, status: 200 
        else
            render json: @content_manager.errors, status: :unprocessable_entity
        end
    end

    private
    def params_content_manager
        params.permit(:first_name, :last_name,
             :phone, :email, :password_digest)
    end
end
