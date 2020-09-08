class CarsController < ApplicationController
  
 before_action :set_car, only: [:show, :edit, :update, :destroy]

  def index
    if params[:query].present?
      @query = params[:query]
      @cars = policy_scope(Car).where("location LIKE ?", @query )
    else
      @cars = policy_scope(Car)
    end
  end

  def show
    authorize @car
  end

  def new
    @car = Car.new
    authorize @car
  end


  def create
    @car = Car.new(car_params)
    @car.user_id = current_user.id
    authorize @car

    if @car.save
      redirect_to @car
    else
      render :new
    end
  end

  def edit
    authorize @car
  end

  def update
    authorize @car
    if @car.update(car_params)
      redirect_to @car
    else
      render :edit
    end
  end

  def destroy
    authorize @car
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
      :price_per_hour, photos: []
    )
  end
end
