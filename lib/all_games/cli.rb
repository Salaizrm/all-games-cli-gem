class AllGames::CLI

  def call
    puts "Hello and welcome to ALL-Games!"
    menu
    user_input
    goodbye
  end

  def menu
    puts "please select one of the options provided:"
    puts <<-MENU
    0 - list all games coming out this year.
    1 - list all games coming out for a specific month.
    2 - search for a specific game.

    To return to this menu type 'menu'
    To exit this program simply type 'exit'
    MENU
  end

  def user_input
    input = nil
    while input != "exit"
      input = gets.strip.downcase
      case input
        when "0"
          year
        when "1"
          month
        when "2"
          specific_game
        when "menu"
          menu
        end
      end
    end

  def self.year
    puts "here are the list of games coming out this year:"
    @games = AllGames::Games.year
  end

  def self.month
    puts "please enter the month you would like to view:"
    input = gets.strip.downcase
    if input == "january"
      @games = AllGames::Games.month.january
      binding.pry
    end
  end

  def specific_game
    puts "please enter in the name of the game you would like to see:"
  end

  def goodbye
    puts "bye! check back to see if any dates have changed!"
  end

end
