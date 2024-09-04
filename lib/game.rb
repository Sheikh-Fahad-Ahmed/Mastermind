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
      go_to_choice(choice)
    end
  end

  def go_to_choice(choice)
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
    p @secret_code
  end
end
