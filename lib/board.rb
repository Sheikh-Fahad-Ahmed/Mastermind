class Board
  attr_accessor :board, :feeback, :colors

  def initialize
    @user_input = []
    @board = []
    @feedback = []
    @colors = Colors.new
  end

  def update_board(arr)
    board.push(arr)
  end

  def show_board
    clear
  end

  def clear
    print "\e[2J\e[H"
  end
end

