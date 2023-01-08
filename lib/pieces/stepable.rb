# frozen_string_literal: true

# module for a chess piece that moves one square at a time
module Stepable
  def available_moves
    moves = { av_moves: [], close_friends: [] }
    row, col = location
    directions.each do |(dr, dc)|
      new_loc = [row + dr, col + dc]
      next if out_of_bounds?(new_loc)

      if self.is_a?(King)
        if board[new_loc].nil?
          moves[:av_moves] << new_loc
        elsif enemy?(board[new_loc]) && !board[new_loc].protected?
          moves[:av_moves] << new_loc
        elsif !board[new_loc].nil? && !enemy?(board[new_loc])
          moves[:close_friends] << new_loc
        end
      else
        if board[new_loc].nil? || enemy?(board[new_loc])
          moves[:av_moves] << new_loc
        else
          moves[:close_friends] << new_loc
        end
      end
    end
    moves
  end
end
