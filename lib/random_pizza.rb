# frozen_string_literal: true

require_relative 'pizza'
require_relative 'price'
require_relative 'calories'

class RandomPizza
  attr_reader :pizza, :price, :calories

  TITLE = 'title'
  DESCRIPTION = 'anonce'
  BIG_PRICE = 'big_price'
  MEDIUM_PRICE = 'medium_price'
  THIN_PRICE = 'thin_price'
  BIG_CALORIES = 'big_thin_calories'
  MEDIUM_CALORIES = 'medium_thin_calories'
  THIN_CALORIES = 'thin_thin_calories'

  def initialize(random_data)
    @pizza = Pizza.new(random_data[TITLE], random_data[DESCRIPTION])

    @price = Price.new(random_data[BIG_PRICE],
                       random_data[MEDIUM_PRICE],
                       random_data[THIN_PRICE])

    @calories = Calories.new(random_data[BIG_CALORIES],
                               random_data[MEDIUM_CALORIES],
                               random_data[THIN_CALORIES])
  end
end
