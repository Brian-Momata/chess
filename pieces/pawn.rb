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
    elsif color == :black
      [
        [1, 0]
      ]
    elsif color == :white
      [
        [-1, 0]
      ]
    end
  end

  private

  def at_beginning?
    row, col = location
    row == 1 || row == 6
  end
end