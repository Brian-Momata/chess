# frozen_string_literal: true

require_relative 'piece'
require_relative 'jumpable'

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
    color == :white ? "\u265C" : "\u2656"
  end
end
