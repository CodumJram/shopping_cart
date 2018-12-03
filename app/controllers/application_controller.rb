class ApplicationController < ActionController::Base
  include ActionController::MimeResponds
  include ActionValidator, SuccessStatus, SessionAuth

end
