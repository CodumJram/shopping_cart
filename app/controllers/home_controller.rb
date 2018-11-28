class HomeController < ApplicationController

    #before_action :authenticate_user, only: [:auth]

    def index
        render json: {service: 'shopping cart service',status: 200}
    end
end
