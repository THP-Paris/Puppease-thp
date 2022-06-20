class UsersController < ApplicationController
  def show
    @user = User.friendly.find(params[:id])
    @dogs = Dog.all
    @place = Place.find_by(user_id: @user.id)
  end

end
