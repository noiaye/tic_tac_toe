class BoardClass
  attr_reader :board

  def initialize
    @board = Array.new(10)
    @winning_positions = [[1, 2, 3], [4, 5, 6], [7, 8, 9], [1, 5, 9], [3, 5, 7], [1, 4, 7], [2, 5, 8], [3, 6, 9]]
  end

  def displaye
    rows = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
    row_seperator = '--+---+--'
    col_seperator = ' | '

    label_for_display = ->(position) { @board[position] || position }
    row_for_display = ->(row) { row.map(&label_for_display).join(col_seperator) }

    ding = rows.map(&row_for_display)
    puts ding.join("\n" + row_seperator + "\n")
  end

  def occupied?(position)
    true if @board[position]
    false
  end

  def place(marker, position)
    @board[position] = marker
  end

  def full?
    return unless @board.all? { |elm| elm }

    true
  end

  def won?(marker)
    @winning_positions.any? do |elm|
      elm.all? { |each| @board[each] == marker }
    end
  end
end
