class DogsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]

  def index
    @dogs = Dog.all
    @markers = @dogs.geocoded.map do |dog|
      {
        lat: dog.latitude,
        lng: dog.longitude
      }
    end
  end

  def show
    @dog = Dog.find(params[:id])
  end

  def new
    @dog = Dog.new
  end

  def create
    @dog = Dog.new(dog_params)
    @dog.user = current_user
    @dog.address = current_user.address

    if @dog.save # t f
      redirect_to dog_path(@dog)
    else
      render :new
    end
  end

  private

  def dog_params
    params.require(:dog).permit(:name, :breed, :born_on, :sex, :size, :neutered, :bio, :photo)
  end
end
