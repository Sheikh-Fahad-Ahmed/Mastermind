# frozen_string_literal: true

require_relative 'colors'
require_relative 'game'
require_relative 'board'

def play_game
  game = Game.new
  game.start
end

play_game
