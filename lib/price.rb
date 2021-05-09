# frozen_string_literal: true

class Price
  attr_reader :big, :standard, :thin

  def initialize(big, standard, thin)
    @big = big
    @standard = standard
    @thin = thin
  end
end
