class Review < ActiveRecord::Base
  belongs_to :restaurant
  # A review must have a content and a rating. The rating should be a number between 0 and 5.
  validates :rating, presence: true, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 5 }
  validates :content, presence: true
  # A review must have a parent restaurant.
  validates_presence_of :restaurant
end
