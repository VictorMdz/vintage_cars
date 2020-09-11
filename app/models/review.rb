class Review < ApplicationRecord
  belongs_to :car
  validates :rating, inclusion: { in: 0..5 }
  validates :content, length: { minimum: 20 }
end
