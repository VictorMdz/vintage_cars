class CarsController < ApplicationController
  
 before_action :set_car, only: [:show]

  def index
    if params[:query].present?
      @query = params[:query]
      @cars = policy_scope(Car).where("location LIKE ?", @query )
    else
      @cars = policy_scope(Car)
    end
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

  def destroy
    @car.destroy
    redirect_to cars_path
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
