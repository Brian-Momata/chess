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

  def turn_play
    start_pos = get_start
    make_move(start_pos)
    system ('clear') || system ('cls')
  end

  private

  def get_start(start_pos = nil)
    loop do
      puts "#{current_player.color.capitalize}'s turn: Select piece you want to move"
      start_pos = current_player.get_pos
      if !board[start_pos].nil? && board[start_pos].color == current_player.color
        break
      end
      puts "Invalid Choice: Choose a #{current_player.color} piece"
    end
    start_pos
  end

  def make_move(start_pos)
    loop do
      puts "Select a position to move to:"
      end_pos = current_player.get_pos
      begin
        board.move_piece(start_pos, end_pos)
        break
      rescue RuntimeError
        puts "The piece can't move to that square"
      end
    end
  end
end