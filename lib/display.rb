# frozen_string_literal: true

module Display
  def welcome_message
    puts 'Welcome to The Mastermind'
  end

  def start_menu
    puts '------Menu------'
    puts '1. Play game'
    puts '2. Show all colors'
    puts '3. Instructions'
    puts '4. Exit'
    puts 'Enter your choice: '
  end

  def winner
    clear

    puts "\n\n\tYou Guessed it!!!"
    puts "\n\tCongratualiations!!!"
    puts "\n\tThank you for playing."
    exit 0
  end

  def loser
    clear

    puts "\n\tSorry, You ran out of guess..."
    puts "\n\tThe secret code is: "
  end

  def clear
    print "\e[2J\e[H"
  end
end
