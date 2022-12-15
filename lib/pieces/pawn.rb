require_relative 'piece.rb'
require_relative 'stepable.rb'

# class for pawn in chess
class Pawn < Piece

  def directions
    if at_beginning? && color == :black
      [
        [1, 0],
        [2, 0]
      ]
    elsif at_beginning? && color == :white
      [
        [-1, 0],
        [-2, 0]
      ]
    elsif color == :black && !at_beginning?
      [
        [1, 0]
      ]
    elsif color == :white && !at_beginning?
      [
        [-1, 0]
      ]
    end
  end

  def available_moves
    moves = []
    row, col = location
    directions.each do |(dr, dc)|
      new_loc = [row + dr, col + dc]
      break if out_of_bounds?(new_loc)

      if board[new_loc].nil?
        moves << new_loc unless !board[one_forward].nil?
      end
      if color == :black && enemy?(board[[row + 1, col - 1]])
        moves << [row + 1, col - 1]
      end

      if color == :black && enemy?(board[[row + 1, col + 1]])
        moves << [row + 1, col + 1]
      end

      if color == :white && enemy?(board[[row -1, col + 1]])
        moves << [row -1, col + 1]
      end

      if color == :white && enemy?(board[[row -1, col - 1]])
        moves << [row -1, col - 1]
      end
    end
    moves
  end

  def to_s
    color == :black ? "\u265F": "\u2659"
  end

  private

  def at_beginning?
    row, col = location
    row == 1 || row == 6
  end

  def one_forward
    r, c = location
    if color == :black
      [r + 1, c] 
    else
      [r - 1, c]
    end
  end
end