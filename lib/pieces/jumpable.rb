# module for a piece that can jump over squares
module Jumpable
  def available_moves
    moves = []
    
    directions.each do |(dr, dc)|
      row, col = location
      loop do
        row += dr
        col += dc
        new_loc = [row, col]
        break if out_of_bounds?(new_loc)

        if board[new_loc].nil?
          moves << new_loc
        elsif enemy?(board[new_loc])
          moves << new_loc
          break
        end
      end
    end
    moves
  end
end