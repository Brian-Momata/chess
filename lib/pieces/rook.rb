require_relative 'piece.rb'
require_relative 'jumpable.rb'

# class for a chess rook
class Rook < Piece
  include Jumpable

  def directions
    [
      [0, 1],
      [1, 0],
      [0, -1],
      [-1, 0]
    ]
  end

  def to_s
    color == :black ? "\u265C": "\u2656"
  end
end