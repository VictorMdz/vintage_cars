class CarsController < ApplicationController
  
 before_action :set_car, only: [:show]

  def index
    @cars = Car.all
  end
  
  def show
  end

  def new
    @car = Car.new
  end


  def create
    @car = Car.new(car_params)
    @car.user_id = current_user.id

    if @car.save
      redirect_to @car
    else
      render :new
    end
    redirect_to car_path(@car)
  end

  private

  def set_car
    @car = Car.find(params[:id])
  end

  def car_params
    params.require(:car).permit(
      :brand, :model, :description,
      :year, :license_plate, :seats,
      :color, :transmission, :energy_source,
      :price_per_hour, :photo
    )
  end
end
