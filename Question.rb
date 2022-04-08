class Question

  def question
    num1 = rand(1...20)
    num2 = rand(1...20)
    puts "What does #{num1} plus #{num2} equal?"
    answer = num1 + num2
    user_answer = $stdin.gets.chomp.to_i

    if user_answer == answer
      puts "Nice job!"
      true
    else
      puts "Not correct T.T"
      false
    end
  end
end
