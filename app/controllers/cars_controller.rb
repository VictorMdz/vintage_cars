class CarsController < ApplicationController
  def index
    @cars = Car.all
  end

  def new
    @car = Car.new
  end

  def create
    @car = Car.new(car_params)

    if @car.save
      redirect_to @car
    else
      render :new
    end

  end

  private

  def car_params
    params.require(:car).permit(:brand, :model, :description, :year, :license_plate, :seats, :color, :transmission, :energy_source, :price_per_hour, :photo)
  end
end
