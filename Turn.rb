require "./Question"

class Turn

  def ask_question(player)
    new_question = Question.new()
    print "#{player.name}: "

    if (new_question.question == false)
      player.minus_life
    end
  end
end