class ApplicationController < ActionController::Base
  include ActionController::MimeResponds
  include ActionValidator, SuccessStatus, SessionAuth

  helper_method :current_user

  def current_content_manager
    if session[:content_manager_id]
      @current_content_manager ||= ContentManager.find(session[:content_manager_id])
    else
      @current_content_manager = nil
    end
  end

end
