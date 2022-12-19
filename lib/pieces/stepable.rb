# module for a chess piece that moves one square at a time
module Stepable
  
  def available_moves
    moves = []
    row, col = location
    directions.each do |(dr, dc)|
      new_loc = [row + dr, col + dc]
      next if out_of_bounds?(new_loc)

      if board[new_loc].nil? || enemy?(board[new_loc])
        moves << new_loc
      end
    end
    moves
  end
end