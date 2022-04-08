class Question
  
  # def initialize(player)
  #   @current_player = player
  # end

  def question
    num1 = rand(1...20)
    num2 = rand(1...20)
    puts "What does #{num1} plus #{num2} equal?"
    answer = num1 + num2
    user_answer = $stdin.gets.chomp.to_i

    if user_answer == answer
      puts "nice job!"
      return true
    else
      puts "Not correct T.T"
      return false
    end
  end
end

# user_question = Question.new

# puts user_question.question
# puts user_question.question