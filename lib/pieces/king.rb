# frozen_string_literal: true

require_relative 'piece'
require_relative 'stepable'

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
    color == :white ? "\u265A" : "\u2654"
  end
end
