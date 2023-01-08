# frozen_string_literal: true

require_relative 'piece'
require_relative 'jumpable'

# class for a chess queen
class Queen < Piece
  include Jumpable

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
    color == :white ? "\u265B" : "\u2655"
  end
end
