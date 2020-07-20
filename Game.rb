class Game
  def initialize
    @player1 = Player.new('Player 1')
    @player2 = Player.new('Player 2')
    @question
  end

  def question
    
  end

  def turn 
    puts "----New Turn----"

   

    print "> "
    answer = $stdin.gets.chomp
    puts @current_turn, @question

  end

end

game1 = Game.new
game1.turn