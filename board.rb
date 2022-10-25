# frozen_string_literal: true

# this class is used for printing the game area, and for putting player symbols
class Board
  attr_reader :area

  def initialize
    @area = [1, 2, 3, 4, 5, 6, 7, 8, 9]
  end

  def swap(number, symbol)
    @area[@area.index(number)] = symbol
  end

  def print_board
    print "| #{@area[0]} | #{@area[1]} | #{area[2]} |\n"
    print "-------------\n"
    print "| #{@area[3]} | #{@area[4]} | #{area[5]} |\n"
    print "-------------\n"
    print "| #{@area[6]} | #{@area[7]} | #{area[8]} |\n"
  end
end
