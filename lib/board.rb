require_relative 'pieces/bishop.rb'
require_relative 'pieces/king.rb'
require_relative 'pieces/knight.rb'
require_relative 'pieces/pawn.rb'
require_relative 'pieces/queen.rb'
require_relative 'pieces/rook.rb'

# class for maintaining the chess board
class Board
  attr_accessor :board

  def initialize
    @board = Array.new(8) { Array.new(8) }
  end

  def render
    8.times do |r|
      puts ''
      puts '-----------------------'
      8.times do |c|
        piece = board[r][c]
        print " " if piece.nil?
        print "#{piece}| "
      end
    end
    puts ''
    puts '-----------------------'
  end

  def set_board
    8.times do |i|
      board[1][i] = Pawn.new([1, i], :black)
      board[6][i] = Pawn.new([6, i], :white)
    end
    board[0][0] = Rook.new([0, 0], :black)
    board[0][7] = Rook.new([0, 7], :black)
    board[7][0] = Rook.new([7, 0], :white)
    board[7][7] = Rook.new([7, 7], :white)

    board[0][1] = Knight.new([0, 1], :black)
    board[0][6] = Knight.new([0, 6], :black)
    board[7][1] = Knight.new([7, 1], :white)
    board[7][6] = Knight.new([7, 6], :white)

    board[0][2] = Bishop.new([0, 2], :black)
    board[0][5] = Bishop.new([0, 5], :black)
    board[7][2] = Bishop.new([7, 2], :white)
    board[7][5] = Bishop.new([7, 5], :white)

    board[0][4] = King.new([0, 4], :black)
    board[7][4] = King.new([7, 4], :white)

    board[0][3] = Queen.new([0, 3], :black)
    board[7][3] = Queen.new([7, 3], :white)
  end
end