module BeginGame
  def ask_for_player1
    p 'Which player do you want?'
    player = gets.to_s
    player = gets while player.chomp.downcase! != 'x' || player.chomp.downcase != 'o'
    player
  end

  def ask_for_player2(previous_player)
    player = 'o' if previous_player == 'x'
    player = 'x' if previous_player == 'o'
    player
  end
end
