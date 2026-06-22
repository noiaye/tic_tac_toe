# # frozen_string_literal: true

class BoardClass
  def initialize
    @board = { a1: 'nil', a2: 'nil', a3: 'nil', b1: 'nil', b2: 'nil',
               b3: 'nil', c1: 'nil', c2: 'nil', c3: 'nil' }
  end

  def occupy_position(position, player)
    if @board[position] == 'nil'
      @board.each do |key, _value|
        @board[key] = player if key == position
      end
    else
      p 'Place is already occuped, try again'
    end
  end

  def display
    @display_segment = @board.clone
    ('a'..'c').each do |letter|
      (1..3).each do |number|
        print @display_segment[:"#{letter}#{number}"], ' '
      end
      puts
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
