class Player
  attr_reader :lives, :name

  def initialize(name)
    @name = name
    @lives = 3
  end

  def take_life
    @lives -= 1
  end

  def dead?
    @lives == 0
  end

  def new_question
    new_question = Question.new
    new_question.ask_question(name)
    print "➡️ "
    answer = $stdin.gets.chomp.to_i

    if answer == new_question.answer
      puts "✅ Correct! ✅"
    else
      puts "❌ Wrong! You lose a life ❌"
      take_life
    end
  end
end