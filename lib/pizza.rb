# frozen_string_literal: true

class Pizza
  attr_reader :title, :description

  def initialize(title, description)
    @title = title
    @description = description
  end
end
