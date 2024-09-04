class Board
  attr_accessor :board

  def initialize
    @board = []
  end

  def update_board(arr)
    board.push(arr)
  end

  def show_board
    p board
  end
end

board = Board.new

board.update_board('YRGB')

board.show_board
