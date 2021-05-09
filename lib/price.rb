# frozen_string_literal: true

class Price
  attr_reader :big, :standard, :thin

  def initialize(big, standard, thin)
    @big = big.to_f
    @standard = standard.to_f
    @thin = thin.to_f
  end
end
