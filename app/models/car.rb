class Car < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many_attached :photos

  validates :brand, presence: true
  validates :model, presence: true
  validates :year, presence: true
  validates :color, presence: true
  validates :location, presence: true
  validates :price_per_hour, presence: true


  def price_in_euros
    price_per_hour / 100
  end
end
