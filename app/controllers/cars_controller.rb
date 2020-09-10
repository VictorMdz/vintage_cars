class CarsController < ApplicationController

skip_before_action :authenticate_user!, only: :index
before_action :set_car, only: [:show, :edit, :update, :destroy]
before_action :check_display_index, only: [ :index ]

  def index
    @cars = policy_scope(Car)
    
    if params[:user_id].present?
      @cars = @cars.where(user_id: params[:user_id])
    end

    if params[:query].present?
      @query = params[:query]
      @cars = Car.search_by_brand_model_location(@query)
    end

    @markers = @cars.geocoded.map do |car|
      {
        lat: car.latitude,
        lng: car.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { car: car }),
        image_url: helpers.asset_url('logo.jpg')
      }
    end
  end

  def show
    # if current_user.id = @bookings.where(user_id: current_user.id)
    @booking = Booking.new
    authorize @car

    @car_bookings = @car.bookings.where status: "pending"




  end

  def new
    @car = Car.new
    authorize @car
  end

  def create
    @car = Car.new(car_params)
    @car.location = @car.location.downcase
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

  def check_display_index
    @your_index = !params[:user_id].present? 
  end

  def car_params
    params.require(:car).permit(
      :brand, :model, :description,
      :year, :license_plate, :seats,
      :color, :transmission, :energy_source,
      :price_per_hour, :location,
      photos: []
    )
  end
end
