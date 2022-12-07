# module for a chess piece that moves one square at a time
module Stepable
  def available_moves
    # move forward if the space is empty/ has enemy piece
    moves = []
    row, col = location
    directions.each do |(dr, dc)|
      moves << [row + dr, col + dc]
    end
    moves 
  end
end