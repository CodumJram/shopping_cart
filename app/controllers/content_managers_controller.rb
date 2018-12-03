class ContentManagersController < ApplicationController
    
    def index 
        @content_managers = ContentManager.all
        render json: @content_managers, status: ok_status
    end

    def show
        @content_manager = ContentManager.find(params[:id])
        render json: @content_manager, status: ok_status
    end

    def create
        @content_manager = ContentManager.new(params_content_manager)
        
        content_manager_save = @content_manager.save
        action_validation(content_manager_save, @content_manager,
                                                    created_status)
    end

    def destroy
        @content_manager = ContentManager.find(params[:id])
        
        content_manager_destroy = @content_manager.destroy
        action_validation(content_manager_destroy, @content_manager,
                                                            ok_status)
    end

    def update
        @content_manager = ContentManager.find(params[:id])
        
        content_manager_update = @content_manager.update(
                                                params_content_manager)
        action_validation(content_manager_update, @content_manager,
                                                            ok_status)
    end

    private
    def params_content_manager
        params.require(:content_manager).permit(:first_name, :last_name, 
                                            :phone, :email, :password_digest)
    end
end
