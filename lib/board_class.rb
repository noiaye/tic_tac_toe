# frozen_string_literal: true

module TicTac
  class BoardClass
    def initialize
      @board = { a1: 'a1', a2: 'a2', a3: 'a3', b1: 'b1', b2: 'b2',
                 b3: 'b3', c1: 'c1', c2: 'c2', c3: 'c3' }
    end

    LINES = [%i[a1 a2 a3], %i[b1 b2 b3], %i[c1 c2 c3], %i[a1 b2 c3], %i[a1 b1 c1], %i[a2 b2 c2], %i[a3 b3 c3],
             %i[a3 b2 c1]].freeze

    def occupy_position(position, player)
      @board.each do |key, _value|
        @board[key] = player if key == position
      end
    end

    def display_board
      ('a'..'c').each do |letter|
        (1..3).each do |number|
          print @board[:"#{letter}#{number}"], ' '
        end
        puts
      end
    end

    def won?(elm)
      LINES.any? do |line|
        line.all? { |element| @board[element] == elm }
      end
    end

    def boardfull?
      yes = false
      @board.each_value do |v|
        yes = %w[x o].include?(v) || false
      end
      yes
    end
  end
end

# # TODO
# # Make some way for Board Class to update a hash which has the coordinates
#

# sparky = GoodDog.new # => "This object was initialized!"
# "nil" "nil" "nil"
# "nil" "nil" "nil"
# "nil" "nil" "nil"

# OPTIMIZE
# Array of possible win states
# [ [a1, a2, a3],[b1, b2, b3], [c1, c2, c3] ]
