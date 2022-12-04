# class for a chess bishop
class Bishop < Piece
  def directions
    [
      [1, 1],
      [-1, 1],
      [1, -1],
      [-1, -1]
    ]
  end
end