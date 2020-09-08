class CarsController < ApplicationController
  def index
    @cars = Car.all
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

  def edit
  end

  def update
    if @car.update(car_params)
      redirect_to @car
    else
      render :edit
    end
  end

  private

  def car_params
    params.require(:car).permit(
      :brand, :model, :description,
      :year, :license_plate, :seats,
      :color, :transmission, :energy_source,
      :price_per_hour, :photo
    )
  end
end
