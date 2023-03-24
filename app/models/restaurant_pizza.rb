class RestaurantPizza < ApplicationRecord
  belongs_to :restaurant
  belongs_to :pizza

  validates :price, presence: true
  validates :price, numericality: {in: 1..30}
end
