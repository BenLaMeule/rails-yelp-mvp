class Restaurant < ActiveRecord::Base
  CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"]
  # When a restaurant is destroyed, all reviews should be destroyed as well.
  has_many :reviews, dependent: :destroy
  validates :name, :address, presence: true
  validates :category, inclusion: { in: CATEGORIES, allow_nil: false }
end
