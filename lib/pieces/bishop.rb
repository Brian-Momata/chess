require_relative 'piece.rb'
require_relative 'jumpable.rb'

# class for a chess bishop
class Bishop < Piece
  include Jumpable

  def directions
    [
      [1, 1],
      [-1, 1],
      [1, -1],
      [-1, -1]
    ]
  end

  def to_s
    color == :white ? "\u265D": "\u2657"
  end
end