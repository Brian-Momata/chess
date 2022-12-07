# class for a chess bishop
class Bishop < Piece
  include Jumpable
  def directions
    [
      [1, 1],
      [-1, 1],
      [1, -1],
      [-1, -1]
    ]
  end
end