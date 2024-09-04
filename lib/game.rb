# frozen_string_literal: true

require_relative 'display'

class Game
  include Display

  def start
    welcome_message
    start_menu
    choice = gets.chomp
    go_to_choice(choice)
  end

  def go_to_choice(choice)
    case choice
    when 1
      'play game'
    when 2

    end
  end
end
