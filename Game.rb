require './Turn'
require "./Player"

# player1 = gets.chomp
players = ARGV

class Game
  attr_accessor :player1, :player2, :current_player, :game
  # def initialize(player1, player2)
  #   @player1 = Player.new("Player 1")
  #   @player2 = Player.new("Player 2")
  # end
  def initialize(players)
    @player1 = Player.new(players[0])
    @player2 = Player.new(players[1])
    @current_player = @player1
    @game = Turn.new
  end


  def game_on
    # game = Turn.new

    def recursion 
      @game.ask_question(@current_player)
      @current_player == @player1 ? @current_player = @player2 : @current_player = @player1
    end
    
    puts game.first_question(@current_player)
    
    @current_player == @player1 ? @current_player = @player2 : @current_player = @player1

    while @player1.lives > 0 && @player2.lives > 0 do
      recursion
    end

  end

  # def current_player
  #   @current_player = @current_player == @player1 ? @player2 : @player1
  # end

  def game_over
    if @player1.lives == 0
      winner = @player2
    elsif @player2.lives == 0
      winner = @player1
    end
     
    puts "#{winner.name} wins the game with the score of #{winner.lives}/3"
    puts "----- GAME OVER -----"
    puts "Goodbye!!!"
    exit
  end

end

new_game = Game.new(players)

new_game.game_on
new_game.game_over