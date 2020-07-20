class Game
  attr_reader :player1, :player2

  def initialize
    puts "Player 1, Please Enter Your Name: "
    p1 =  $stdin.gets.chomp.to_s
    @player1 = Player.new(p1)
    puts "Player 2, Please Enter Your Name: "
    p2 =  $stdin.gets.chomp.to_s
    @player2 = Player.new(p2)
  end


  def start
    puts "✨✨✨Welcome to a New Game #{player1.name} and #{player2.name}✨✨✨"
    turn
  end

  def turn 
    player1.new_question
    check_score
    puts "#{player1.name}: #{player1.lives}/3 vs #{player2.name}: #{player2.lives}/3"
    puts "⭐️ New Turn ⭐️"
    player2.new_question
    check_score
    puts "#{player1.name}: #{player1.lives}/3 vs #{player2.name}: #{player2.lives}/3"
    puts "⭐️ New Turn ⭐️"
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
    puts "🏆 #{player.name} wins the Game! with the score of #{player.lives}/3 🏆"
    puts " *:･ﾟ✧ GAME OVER *:･ﾟ✧ "
    exit(0)
  end
end
