class DogsController < ApplicationController
  before_action :authenticate_user!, only:[:create]

  def index
    @q = Dog.ransack(params[:q])
    @dogs = @q.result
  end

  def show
    @dog = Dog.friendly.find(params[:id])
    @dog = Dog.with_attached_pictures.friendly.find(params[:id])
  
    @wishlist = Wishlist.new
  end

  def new
    @dog = Dog.new
  end 

  def create
    @dog = Dog.new(dog_params)
    @dog.user_id = current_user.id

    if @dog.save 
      redirect_to dog_path(@dog)
    else
      puts '$'*50
      puts @event.errors.messages
      puts '$'*50
      render 'new'
    end
  end

  def update
    @dog = Dog.friendly.find(params[:id])

  end

  def destroy
  end

  private

  def dog_params
    params.require(:dog).permit(:name, :birth_date, :gender, :description, :vaccine, :lof, :reward, :breed, :color, pictures: [])
  end

  def filtering_params(params)
    params.slice(:breed, :color)
  end

end
