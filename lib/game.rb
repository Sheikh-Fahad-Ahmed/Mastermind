# frozen_string_literal: true

require_relative 'display'

class Game
  attr_reader :color_instance, :secret_code, :board

  include Display
  def initialize
    @color_instance = Colors.new
    @board = Board.new
  end

  def start
    welcome_message
    loop do
      start_menu
      choice = gets.chomp.to_i
      start_menu_choice(choice)
    end
  end

  def start_menu_choice(choice)
    case choice
    when 1
      start_game
    when 2
      puts @color_instance.colors.join(' ')
    when 4
      exit 0
    end
  end

  def start_game
    puts "Generating secret code...\n.\n.\n."
    @secret_code = @color_instance.generate_secret_code
    puts 'Secret code generated'
    puts "You get 12 turns...Let's Begin"
    count = 1
    until count == 12
      puts "\n Turn #{count} "
      p secret_code
      input = user_input
      user_colors = color_instance.colors_from_input(input)
      board.update_board(user_colors)
      board.update_feedback(user_colors, secret_code)
      board.show_board
      count += 1
    end
  end

  def user_input
    puts 'Enter only the first letter of the colors (only 4):'
    gets.chomp
  end

  # def game_menu_choice(choice)
  #   case choice
  #   when 1
  #     puts 'player turn'
  #   when 2
  #     puts 'Previous input'
  #   when 3
  #     puts @all_colors.colors.join(' ')
  #   when 4
  #     exit 0
  #   end
  # end
end
