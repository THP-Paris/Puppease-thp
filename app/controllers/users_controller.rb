class UsersController < ApplicationController
  def show
    @user = User.friendly.find(params[:id])
    @dogs = Dog.all
  
  end
end
