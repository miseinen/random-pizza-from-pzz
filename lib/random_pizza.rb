# frozen_string_literal: true

require_relative 'pzz_data'

class RandomPizza
  attr_reader :pizzas

  def initialize
    @pizzas = PzzData.new.data
  end

  def random_pizza
    pizzas[rand(pizzas.count)]
  end
end
