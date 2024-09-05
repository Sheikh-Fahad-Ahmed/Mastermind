class Board
  attr_accessor :board, :feedback, :colors

  def initialize
    @user_input = []
    @board = ['YRBG']
    @feedback = ['010101']
    @colors = Colors.new
  end

  def update_board(string)
    board.push(string)
  end

  def show_board
    clear

    divider = '------+------+------'
    feedback_help = "\n\nFeedback:\n1 - a color is in its place\n0 - a color is present but not in its place"
    puts divider
    puts 'Mastermind'
    puts "\n\nEmpyt..\n\n" if board.empty?
    board.zip(feedback).each do |item, feeback|
      puts "#{item}    #{feeback}"
    end
    puts feedback_help
    puts divider
  end

  def clear
    print "\e[2J\e[H"
  end
end
