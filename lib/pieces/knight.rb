require_relative 'piece.rb'
require_relative 'stepable.rb'

# class for a chess knight
class Knight < Piece
  include Stepable

  def directions
    [
      [1, 2],
      [2, 1],
      [-1, 2],
      [-2, 1],
      [1, -2],
      [2, -1],
      [-1, -2],
      [-2, -1]
    ]
  end

  def to_s
    color == :black ? "\u265E": "\u2658"
  end
end