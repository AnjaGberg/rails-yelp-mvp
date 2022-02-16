class Review < ApplicationRecord
  belongs_to :restaurant
  RATINGS = %w(0 1 2 3 4 5)

  validates :content, presence: true
  validates :rating, numericality: { greater_than_or_equal_to: 0, less_than: 6 }
end
