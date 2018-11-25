class HomeController < ApplicationController

    #before_action :authenticate_user, only: [:auth]

    def index
        render json: {service: 'shopping cart service',status: 200}
    end

    def auth
        render json: {status: 200, json: "Logged In #{current_user.name}" }
    end

end
