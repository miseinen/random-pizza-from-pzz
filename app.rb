require_relative 'lib/pzz_data'
require_relative 'lib/random_pizza'
require_relative 'lib/printer'

Printer.new(RandomPizza.new(PzzData.new.random_data)).print_pizza_details
