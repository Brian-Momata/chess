# frozen_string_literal: true

require_relative 'lib/board'
require_relative 'game'
require_relative 'lib/player'

b = Board.new
b.set_board
p1 = Player.new(:black)
p2 = Player.new(:white)
game = Game.new(b, p1, p2)

puts 'Select [1] to load saved game and [2] to start new'
selection = gets.chomp.to_i
case selection
when 1
  game.load
  game.play
when 2
  game.play
end
