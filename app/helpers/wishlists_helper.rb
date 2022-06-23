module WishlistsHelper
    private

    def require_login
        unless current_user != nil
            redirect_to new_user_session_path
        end
    end

    def only_current_wishlist
        if current_user != nil && current_user.wishlist.id != params[:id].to_i
            return redirect_to wishlist_path(current_user.wishlist.id)
        end
    end
    
end
