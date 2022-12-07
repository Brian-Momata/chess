# class for maintaining the chess board
class board
  attr_accessor :board

  def initialize
    @board = Array.new(8) { Array.new(8) }
  end
end