require_relative 'lib/board.rb'
require_relative 'game.rb'
require_relative 'lib/player.rb'

b = Board.new
b.set_board
p1 = Player.new(:black)
p2 = Player.new(:white)
game = Game.new(b, p1, p2)

game.play
