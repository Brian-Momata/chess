# class for pawn in chess
class Pawn
  def directions
    return two_steps if at_beginning?
    [
      [0, 1]
    ]
  end

  private

  def two_steps
    [
      [0, 2]
    ]
  end

  def at_beginning?
    row, col = location
    row == 1 && color == :black || row == 6 && color == :white
  end
end