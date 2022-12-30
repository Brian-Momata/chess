# class holds game logic
class Game
  attr_reader :board, :player1, :player2
  attr_accessor :current_player

  def initialize(board, player1, player2)
    @board = board
    @player1 = player1
    @player2 = player2
    @current_player = player2
  end

  def over?
    board.checkmate?
  end

  def play
    board.render
    until over?
      turn_play
      board.render
      switch_player!
    end
  end

  def switch_player!
    @current_player = (current_player == player1) ? player2 : player1
  end
end