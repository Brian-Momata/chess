# frozen_string_literal: true

require_relative 'piece'
require_relative 'jumpable'

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
    color == :white ? "\u265D" : "\u2657"
  end
end
