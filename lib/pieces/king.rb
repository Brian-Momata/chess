# class for a chess king
class King < Piece
  include Stepable
  def directions
    [
      [0, 1],
      [1, 0],
      [0, -1],
      [-1, 0],
      [1, 1],
      [-1, 1],
      [1, -1],
      [-1, -1]
    ]
  end
end