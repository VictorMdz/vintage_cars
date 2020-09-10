class Car < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many_attached :photos

  validates :brand, presence: true
  validates :model, presence: true
  validates :location, presence: true
  validates :price_per_hour, presence: true

  include PgSearch::Model
  pg_search_scope :search_and_filter,
    # against: [ :brand, :model, :location ],
    against: [ :brand, :model, :location,
              :year, :price_per_hour,
              :color, :energy_source,
              :transmission ],
    using: {
      tsearch: { prefix: true }
    }

  scope :by_price, -> (price) { where('price_per_hour <= ?', price.to_i) }
  scope :by_year, -> (years) { where(year: years) }

  def price_in_euros
    price_per_hour / 100
  end

  def price_in_cents
    price_per_hour * 100
  end
end
