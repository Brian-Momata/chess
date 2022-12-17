# class for a chess player
class Player
  attr_reader :color

  def initialize(color)
    @color = color
  end

  def get_pos
    gets.chomp.split(',').collect { |pos| pos.to_i }
  end
end