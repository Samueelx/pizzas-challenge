class RestaurantPizza < ApplicationRecord
  belongs_to :restaurant
  belongs_to :pizza

  validates :price, presence: true
  validates :price, numericality: {in: 1..30}

  #pizza id must be between 10 and 27 since those are all the pizzas we have at the moment.
  validates :pizza_id, presence: true
  validates :pizza_id, numericality: {in: 1..18}

  # restaurant_id must be between 6 and 10 since those are all the restaurants we have at the moment
  validates :restaurant_id, presence: true
  validates :restaurant_id, numericality: {in: 1..5}
end
