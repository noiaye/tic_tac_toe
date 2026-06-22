# frozen_string_literal: true

# TODO
#
# Make it so that main starts to grab all these modules and classes with require_relative
#
require_relative 'lib/board_class'

babys = BoardClass.new
babys.occupy_position(:a2, 'x')
babys.occupy_position(:b2, 'o')
babys.display
