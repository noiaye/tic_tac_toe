# frozen_string_literal: true

# TODO
#
# Make it so that main starts to grab all these modules and classes with require_relative
#
require_relative 'lib/board_class'

board = BoardClass.new

# p 'Hello and welcome to tic-tac-toe, what would you like to play as?'
# player1 = gets
# player2 = ''
# player2 = if player1 == 'x'
#             'o'
#           else
#             'x'
#           end

p 'Place your move player X: '
board.display
move = :"#{gets.chomp}"
board.occupy_position(move, 'x')

# TODO
# Make game logic for checking all possible win conditions and seeing if the current stats is such
#

p 'Place your move player O: '
board.display
move = :"#{gets.chomp}"
board.occupy_position(move, 'o')
