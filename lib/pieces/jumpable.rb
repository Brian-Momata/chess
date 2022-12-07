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

        moves << new_loc
      end
    end
    moves
  end
end