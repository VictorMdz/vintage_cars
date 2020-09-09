class Car < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many_attached :photos

  def price_in_euros
    price_per_hour / 100
  end

  def price_in_cents
    price_per_hour * 100
  end
end
