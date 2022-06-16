class DogsController < ApplicationController
  def index
    @dog = Dog.all
  end

  def show
    @dog = Dog.find(params[:id])
  end

  def new
    @dog = Dog.new
  end 

  def create
    @dog = Dog.new(dog_params)
    @dog.user_id = current_user.id
    if @dog.save 
      redirect_to root_path
    else
      puts '$'*50
      puts @event.errors.messages
      puts '$'*50
      render 'new'
    end
  end

  def update
  end

  def destroy
  end

  private

  def dog_params
    params.require(:dog).permit(:name, :birth_date, :gender, :description, :vaccine, :lof, :reward, :breed, :color)
  end

end
