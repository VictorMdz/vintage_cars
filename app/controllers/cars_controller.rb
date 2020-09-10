class CarsController < ApplicationController

skip_before_action :authenticate_user!, only: :index
before_action :set_car, only: [:show, :edit, :update, :destroy]
before_action :set_cars, only: :index

  def index
    #Index for user's own cars
    if params[:user_id].present?
      @cars = @cars.where(user_id: params[:user_id])
    end

    #Index for all cars in website
    #Index for search query
    if params[:query].present?
      @query = params[:query]
      @cars = @cars.search_and_filter(@query)
    end
    #index for filters
    if params[:color] != "" && params[:color].present?
      @cars = @cars.search_and_filter(params[:color])
    end

    if params[:location] != "" && params[:location].present?
      @cars = @cars.search_and_filter(params[:location])
    end

    if params[:brand] != "" && params[:brand].present?
      @cars = @cars.search_and_filter(params[:brand])
    end

    if params[:energy_source] != "" && params[:energy_source].present?
      @cars = @cars.search_and_filter(params[:energy_source])
    end

    if params[:transmission] != "" && params[:transmission].present?
      @cars = @cars.search_and_filter(params[:transmission])
    end

    if params[:price] != "" && params[:price].present?
      @cars = @cars.by_price(params[:price])
    end
    if params[:year] != "" && params[:year].present?
      @cars = @cars.by_year(@years[params[:year].to_sym].to_a)
    end
  end

  def show
    @booking = Booking.new
    authorize @car
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

  def set_cars
    @cars = policy_scope(Car)

    @colors = @cars.map { |car| car.color }
    @colors.uniq!

    @brands = @cars.map { |car| car.brand }
    @brands.uniq!

    @locations = @cars.map { |car| car.location }
    @locations.uniq!

    @prices = @cars.map { |car| car.price_in_euros }
    @prices.uniq!

    @energies = @cars.map { |car| car.energy_source }
    @energies.uniq!

    @transmissions = @cars.map { |car| car.transmission }
    @transmissions.uniq!

    @years = {
      "50's": 1950..1959,
      "60's": 1960..1969,
      "70's": 1970..1979,
      "80's": 1980..1989
    }
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
