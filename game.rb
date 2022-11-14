# frozen_string_literal: true

require './player'
require './board'

# this class is the main class used for playing the game
class Game
  attr_reader :board

  def initialize
    @player1 = new_player
    loop do
      @player2 = new_player
      break if @player1.symbol != @player2.symbol
    end
    @board = Board.new
    @turn = Random.new.rand(1)
  end

  def new_player
    puts 'write name of player'
    name = gets.chomp
    puts 'write player symbol'
    symbol = ''
    symbol = gets.chomp while symbol.length > 1 || symbol == ''
    Player.new(name, symbol)
  end

  def move
    case @turn
    when @turn.zero?
      @board.swap(@player1.symbol)
      @turn = 1
    when @turn == 1
      @board.swap(@player2.symbol)
      @turn = 0
    end
  end

  def equal_rows? # rubocop:disable Metrics/AbcSize
    3.times do |i|
      return true if @board[i][0] == @board[i][1] && @board[i][1] == @board[i][2] ||
                     @board[0][i] == @board[1][i] && @board[1][i] == @board[2][i]
    end
    false
  end

  def equal_diagonals? # rubocop:disable Metrics/AbcSize
    return true if @board[0][0] == @board[1][1] && @board[1][1] == @board[2][2] ||
                   @board[0][2] == @board[1][1] && @board[1][1] == @board[2][0]

    false
  end

  def won?
    return true if equal_rows? && equal_diagonals?

    false
  end
end
