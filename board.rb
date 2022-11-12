# frozen_string_literal: true

# this class is used for printing the game area, and for putting player symbols
class Board
  attr_reader :area

  def initialize
    @area = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
  end

  def swap(number, symbol)
    row = @area.index { |rows| rows.index(number) }
    @area[row][@area[row].index(number)] = symbol
  end

  def print_board # rubocop:disable Metrics/AbcSize
    print "| #{@area[0][0]} | #{@area[0][1]} | #{area[0][2]} |\n"
    print "-------------\n"
    print "| #{@area[1][0]} | #{@area[1][1]} | #{area[1][2]} |\n"
    print "-------------\n"
    print "| #{@area[2][0]} | #{@area[2][1]} | #{area[2][2]} |\n"
  end
end
