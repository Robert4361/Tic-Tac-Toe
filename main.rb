# frozen_string_literal: true

require './game'

game = Game.new

game.move until game.won?
