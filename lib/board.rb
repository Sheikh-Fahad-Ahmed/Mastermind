# frozen_string_literal: true

class Board
  attr_accessor :board, :feedback, :colors

  def initialize
    @user_input = []
    @board = []
    @feedback = []
    @colors = Colors.new
  end

  def update_board(user_colors)
    board.push(user_colors)
  end

  def update_feedback(user_colors, secret_code)
    feedback_string = ''
    colors_checked = []
    user_colors.each do |color|
      if (secret_code.include? color) && !(colors_checked.include? color)
        if secret_code.find_index(color) == user_colors.find_index(color)
          feedback_string += '1'
          colors_checked.push(color)
        else
          feedback_string += '0'
          colors_checked.push(color)
        end
      end
    end
    @feedback.push(feedback_string)
  end

  def show_board
    divider = '------+------+------'
    feedback_help = "\n\n1 - a color is in its place\n0 - a color is present but not in its place"
    puts divider
    puts 'Mastermind'
    puts "\n\nEmpyt..\n\n" if board.empty?
    board.zip(feedback).each do |item, feeback|
      puts "#{item.join(' ')}\t#{feeback}"
    end
    puts feedback_help
    puts divider
  end

  def clear
    print "\e[2J\e[H"
  end
end
