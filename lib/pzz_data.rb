# frozen_string_literal: true

require 'json'
require 'net/http'

class PzzData
  attr_reader :data

  def initialize
    source = 'https://pzz.by/api/v1/pizzas?load=ingredients,filters&filter=meal_only:0&order=position:asc'
    response = Net::HTTP.get_response(URI.parse(source))
    body = response.body

    @data = JSON.parse(body)['response']['data']
  end
end

