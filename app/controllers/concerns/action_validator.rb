module ActionValidator

    #function that validates if an object can do an action and renders it if no error
    def action_validation(action, object_after_action, action_status)
   
        if action
            render json: object_after_action, status: action_status
        else
            render json: object_after_action.errors, status: :unprocessable_entity
        end
    end
end