# frozen_string_literal: true

# this class is used for creating players and assigning symbols for the players
class Player
  attr_reader :name, :symbol

  def initialize(name, symbol)
    @name = name
    @symbol = symbol
  end
end
