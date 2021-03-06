class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :edit, :update]

  def index
    # @bookings = Booking.all
    @bookings = policy_scope(Booking).includes(:car)

    if params[:user_id].present?
      @bookings = @bookings.where(cars: { user_id: current_user.id })
    else
      @bookings = @bookings.where(user_id: current_user.id)
    end

    @pending_bookings = @bookings.where status: "pending"
    @other_bookings = @bookings.where.not status: "pending"
  end


  def show
    authorize @booking
  end

  def new
    @car = Car.find(params[:car_id])
    @user = current_user
    @booking = Booking.new
    # authorize @booking
  end

  def create
    @booking = Booking.new(booking_params)
    authorize @booking

    @booking.user_id = current_user.id
    @car = Car.find(params[:car_id])

    @booking.car = @car
    @booking.save

    if @booking.save
      redirect_to booking_path(@booking)
    else
      render "cars/show"
    end
  end

  def edit
    authorize @booking
  end

  def update
    if @booking.update(booking_params)
      redirect_to @booking
    else
      render "cars/show"
    end

    authorize @booking
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(
      :starting_date,
      :ending_date,
      :status
    )
  end
end
