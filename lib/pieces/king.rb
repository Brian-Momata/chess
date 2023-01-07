require_relative 'piece.rb'
require_relative 'stepable.rb'

# class for a chess king
class King < Piece
  include Stepable

  def directions
    [
      [0, 1],
      [1, 0],
      [0, -1],
      [-1, 0],
      [1, 1],
      [-1, 1],
      [1, -1],
      [-1, -1]
    ]
  end

  def to_s
    color == :white ? "\u265A": "\u2654"
  end
end