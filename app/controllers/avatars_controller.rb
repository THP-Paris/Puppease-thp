class AvatarsController < ApplicationController
    def create
        @user = User.friendly.find(params[:user_id])
        @user.avatar.attach(params[:avatar])
        redirect_to(user_path(@user))

        @dog = Dog.find(params[:dog_id])
        @dog.avatar.attach(params[:avatar])
        redirect_to(dog_path(@dog))
      end
end
