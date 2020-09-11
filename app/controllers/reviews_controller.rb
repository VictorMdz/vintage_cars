class ReviewsController < ApplicationController

  def show
    @car = Car.find(params[:id])
    @review = Review.new
    authorize @review
  end

  def create
    @review = policy_scope(Review).new(review_params)
    authorize @review

    @car = Car.find(params[:car_id])

    @review.car = @car
    @review.save


    if @review.save
      redirect_to car_path(@car)
    else
      render 'car/show'
    end
  end

  private

  def review_params
    params.require(:review).permit(:rating, :content)
  end
end
