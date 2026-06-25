require_relative 'player_class'
require_relative 'board_class'
module TicTac
  class GameClass
    def initialize(player_1_class, player_2_class)
      @current_player_id = 0
      @players = [player_1_class.new('x'), player_2_class.new('o')]
    end
    attr_reader :players

    def current_player
      @player[@current_player_id]
    end

    def switch_players
      @current_player_id = other_player_id
    end

    def other_player_id
      1 - @current_player_id
    end

    def play
      loop do
        BoardClass.display_board

        BoardClass.occupy_position(PlayerClass.ask_for_position(current_player), current_player)

        if BoardClass.won?(current_player.marker)
          puts 'Player X has won!!'
          display
          return
        elsif BoardClass.boardfull?
          p 'Draw'
          display
          return
        end
        switch_players
      end
    end
  end
end
