class ApplicationController < ActionController::Base
    after_action :create_wishlist_and_assign_to_current_user, only: [:create]
    before_action :configure_permitted_parameters, if: :devise_controller?

    def create_wishlist_and_assign_to_current_user
        if current_user != nil && current_user.wishlist == nil
            wishlist =  Wishlist.create(user_id: current_user.id)
        end
    end

    protected
def configure_permitted_parameters
  
    devise_parameter_sanitizer.permit(:account_update, keys:[:username, :phone, :place_id, :avatar])
end
end
