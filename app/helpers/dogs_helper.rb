module DogsHelper

    def set_place
        if current_user.place_id === nil
            redirect_to new_place_path
        end
    end

end
