class WishlistDogsController < ApplicationController
    def create
        @wishlist_dog = WishlistDog.new(
            'dog_id' => params[:dog_id],
            'wishlist_id' => Wishlist.find_by(user_id: current_user.id).id
          )
          respond_to do |format|
            if @wishlist_dog.save
            format.html { redirect_to wishlist_path(Wishlist.find_by(user_id: current_user.id).id) }
            format.js {'create'}
           
            else
              format.html {render :create, notice: "chien deja ajouté"}
              format.js {render:'fail_save'}
              puts '$'*50
              puts @wishlist_dog.errors.messages
              puts '$'*50
            end
          end
        end
end
