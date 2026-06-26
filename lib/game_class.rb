require_relative 'player_class'
require_relative 'board_class'

class GameClass
  attr_reader :players, :current_player_id, :board_manager

  def initialize
    @players = [PlayerClass.new('X'), PlayerClass.new('O')]
    @board_manager = BoardClass.new
    @current_player_id = 0
  end

  def current_player
    players[current_player_id]
  end

  def switch_players
    @current_player_id = other_player_id
  end

  def other_player_id
    1 - @current_player_id
  end

  def ask_player
    puts 'Where do you wanna put ur thing'
    position = gets.to_i
    return position if board_manager.occupied?(position) == false

    puts 'Please try again'
  end

  def play
    loop do
      board_manager.displaye
      position = ask_player
      puts position
      board_manager.place(current_player.marker, position)
      board_manager.displaye
      if board_manager.won?(current_player.marker)
        return puts "Player #{current_player.marker} Won!"
      elsif board_manager.full?
        return puts 'Draw!'
      end

      switch_players
    end
  end
end

GameClass.new.play
