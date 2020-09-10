class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :car
  enum status: [:pending, :accepted, :declined]

  def final_price_cents
    total_price = car.price_in_cents * duration
  end

  def final_price_euros
    final_price_cents / 100
  end

  def duration
    ((ending_date - starting_date) / 3600).to_i
  end

  def user_name
    user.full_name
  end
end
