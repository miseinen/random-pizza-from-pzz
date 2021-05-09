# frozen_string_literal: true

class Printer
  attr_reader :random_pizza

  PRICE = 10_000
  DELIMITER = '=' * 50

  def initialize(random_pizza)
    @random_pizza = random_pizza
  end

  def print_pizza_details
    puts DELIMITER
    puts 'Ваша случайная пицца с Pzz.by: '
    puts DELIMITER
    puts "Наименование: #{random_pizza.pizza.title}"
    puts "Состав: #{random_pizza.pizza.description}"
    big_pizza_details
    medium_pizza_details
    thin_pizza_details
    puts DELIMITER
    puts 'Переходите на сайт Pzz.by и заказывайте выбранную пиццу :)'
    puts DELIMITER
  end

  private

  def big_pizza_details
    return if random_pizza.price.big.zero?

    puts 'Большая:'
    print "Стоимость: #{random_pizza.price.big / PRICE} BYN "
    puts "Калории: #{random_pizza.calories.big}"
  end

  def medium_pizza_details
    return if random_pizza.price.standard.zero?

    puts 'Средняя:'
    print "Стоимость: #{random_pizza.price.standard / PRICE} BYN "
    puts "Калории: #{random_pizza.calories.standard}"
  end

  def thin_pizza_details
    return if random_pizza.price.thin.zero?

    puts 'На тонком тесте:'
    print "Стоимость: #{random_pizza.price.thin / PRICE} BYN "
    puts "Калории: #{random_pizza.calories.thin}"
  end
end