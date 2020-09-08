class BookingsController < ApplicationController
  before_action :set_booking, only: [:show]

  def index
    @bookings = Booking.all
  end

  def show
  end

  def new
    @car = Car.find(params[:car_id])
    @user = current_user
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)

    @booking.user_id = current_user.id
    @car = Car.find(params[:car_id])

    @booking.car = @car
    @booking.save

    if @booking.save

      redirect_to booking_path(@booking)
    else
      render :new
    end
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(
      :starting_date,
      :ending_date
    )
  end
end
