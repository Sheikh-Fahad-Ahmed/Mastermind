# frozen_string_literal: true

require_relative 'display'

class Game
  attr_reader :all_colors, :secret_code

  include Display
  def initialize
    @all_colors = Colors.new
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
      puts @all_colors.colors.join(' ')
    when 4
      exit 0
    end
  end

  def start_game
    puts "Generating secret code...\n.\n.\n."
    @secret_code = @all_colors.generate_secret_code
    puts 'Secret code generated'
    puts "You get 12 turns...Let's Begin"
    count = 1
    until count == 12
      puts "\n Turn #{count} "
      game_menu
      choice = gets.chomp.to_i
      count += 1 if choice == 1
      game_menu_choice(choice)
    end
  end

  def game_menu_choice(choice)
    case choice
    when 1
      puts 'player turn'
    when 2
      puts 'Previous input'
    when 3
      puts @all_colors.colors.join(' ')
    when 4
      exit 0
    end
  end
end
