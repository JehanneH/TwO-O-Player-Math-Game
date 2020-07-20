class Game
  attr_reader :player1, :player2

  def initialize
    @player1 = Player.new('Player 1')
    @player2 = Player.new('Player 2')
  end


  def start
    puts "-----Welcome to a New Game #{player1.name} and #{player2.name}-----"
    turn
  end

  def turn 
    player1.new_question
    check_score
    puts "Player 1: #{player1.lives}/3 vs Player 2: #{player2.lives}/3"
    puts "----New Turn----"
    player2.new_question
    check_score
    puts "Player 1: #{player1.lives}/3 vs Player 2: #{player2.lives}/3"
    puts "----New Turn----"
    turn
  end

  def check_score
    if @player1.dead?
      winner(@player2)
    elsif @player2.dead?
      winner(@player1)
    end
  end

  def winner(player)
    puts "#{player.name} wins the Game! with the score of #{player.lives}/3"
    puts "✨GAME OVER✨"
    exit(0)
  end
end
