# class for a chess piece
class Piece
  attr_reader :color
  attr_accessor :location

  def initialize(location, color)
    @location = location
    @color = color
  end
end