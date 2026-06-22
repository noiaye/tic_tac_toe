# # frozen_string_literal: true

class BoardClass
  def initialize
    @board = { a1: 'a1', a2: 'a2', a3: 'a3', b1: 'b1', b2: 'b2',
               b3: 'b3', c1: 'c1', c2: 'c2', c3: 'c3' }
  end

  def occupy_position(position, player)
    if @board[position] != 'x' && @board[position] != 'o'
      @board.each do |key, _value|
        @board[key] = player if key == position
      end
    else
      p 'Place is already occuped, try again'
    end
  end

  def display
    ('a'..'c').each do |letter|
      (1..3).each do |number|
        print @board[:"#{letter}#{number}"], ' '
      end
      puts
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

# # TODO
# # Make some way for Board Class to update a hash which has the coordinates
#

# sparky = GoodDog.new # => "This object was initialized!"
# "nil" "nil" "nil"
# "nil" "nil" "nil"
# "nil" "nil" "nil"
