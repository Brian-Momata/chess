# frozen_string_literal: true

# class for a chess piece
class Piece
  attr_reader :color, :board
  attr_accessor :location

  def initialize(board, location, color)
    @location = location
    @color = color
    @board = board
  end

  def enemy?(piece)
    return false if piece.nil?

    piece.color != color
  end

  def out_of_bounds?(position = location)
    row, col = position
    row > 7 || col > 7 || row.negative? || col.negative?
  end

  def protected?
    friends = board.board.flatten.select { |piece| !piece.nil? && !enemy?(piece) }
    friends.collect { |friend| friend.available_moves[:close_friends] }
           .flatten(1)
           .include?(location)
  end
end
