class Questions
  attr_accessor :answer, :question

  def initalize 
    @number1 = rand(1..20)
    @number2 = rand(1..20)
    @answer = @number1 + @number2
    @question = "What does #{@number1} plus #{@number2} equal?"
  end

  def check_answer?(input)
    @answer == input
  end
  
end
