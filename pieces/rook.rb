# class for a chess rook
class Rook < Piece
  def directions
    [
      [0, 1],
      [1, 0],
      [0, -1],
      [-1, 0]
    ]
  end
end