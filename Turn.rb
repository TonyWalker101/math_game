require "./Question"
require "./Player"

class Turn
  # def initialize(player)
  #   @player = player
  # end

  # def validation
  #   if (question.question == false)
  #     @player.minus_life
  #   end
  # end

  
  def first_question(player)
    question = Question.new()
    print "#{player.name}: "
    print question.question

    if (question.question == false)
      player.minus_life
    end
  end

  def ask_question(player)
    question = Question.new()
    puts "----- NEW TURN -----"
    print "#{player.name}: "
    print question.question

    if (question.question == false)
      player.minus_life
    end

  end
  
end

# player1 = Player.new("Tony")
# player2 = Player.new("Yen")

# game = Turn.new(player1, player2)

# game.first_question
# game.ask_question