# frozen_string_literal: true

require_relative 'piece'
require_relative 'stepable'

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
    color == :white ? "\u265E" : "\u2658"
  end
end
