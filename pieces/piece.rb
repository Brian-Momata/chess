# class for a chess piece
class Piece
  attr_reader :color
  attr_accessor :location

  def initialize(location, color)
    @location = location
    @color = color
  end

  def out_of_bounds?(position = location)
    row, col = position
    row > 7 || col > 7 || row < 0 || col < 0
  end
end