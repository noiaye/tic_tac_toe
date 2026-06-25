module TicTac
  class PlayerClass
    def initialize(marker)
      @marker = marker
    end
    attr_reader :marker

    def ask_for_position(player)
      loop do
        p "Place your marker player: #{player.marker}"
        position = :"#{gets.chomp}"
        return position if @board[position] != 'x' || @board[position] != 'o'

        puts 'Invalid or occupied position please try again'
      end
    end
  end
end
