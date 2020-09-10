class Car < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many_attached :photos

  validates :brand, presence: true
  validates :model, presence: true
  validates :location, presence: true
  validates :price_per_hour, presence: true

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?

  include PgSearch::Model
  pg_search_scope :search_by_brand_model_location,
    against: [ :brand, :model, :location ],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }

  def price_in_euros
    price_per_hour / 100
  end

  def price_in_cents
    price_per_hour * 100
  end

  def user_name
    user.full_name
  end
end
