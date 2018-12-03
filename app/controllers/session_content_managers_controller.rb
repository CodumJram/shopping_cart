class SessionContentManagersController < ApplicationController
    
    def create
        content_manager = ContentManager.find_by_email(params[:email])
        if content_manager && content_manager.authenticate(params[:password])
            session[:content_manager_id] = content_manager.id
            redirect_to root_url, notice: "Logged in!"
        else
            flash.now[:alert] = "Email or password is invalid"
            render "new"
        end
    end
    
    def destroy
        session[:content_manager_id] = nil
        redirect_to root_url, notice: "Logged out!"
    end
end
