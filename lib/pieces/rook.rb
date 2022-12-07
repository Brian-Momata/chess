# class for a chess rook
class Rook < Piece
  include Jumpable
  def directions
    [
      [0, 1],
      [1, 0],
      [0, -1],
      [-1, 0]
    ]
  end
end