class PlayerClass
  def set_x
    puts 'Which player do you want to be?'
    result = gets

    return if %w[x o].include?(result)

    gets
  end

  def set_y(variable)
    variable = 'y'
  end
end
