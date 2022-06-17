class PicturesController < ApplicationController
  skip_before_action :verify_authenticity_token

  def create
    @dog = Dog.friendly.find(params[:id])
    @dog.pictures.attach(params[:pictures])
    redirect_to(dog_path(@dog))
  end
end
