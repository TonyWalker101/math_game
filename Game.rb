require './Turn'
require "./Player"

class Game
  attr_accessor :player1, :player2, :current_player, :game
  def initialize(players)
    @player1 = Player.new(players[0] || "Player1")
    @player2 = Player.new(players[1] || "Player2")
    @current_player = @player1
    @game = Turn.new
  end

  def game_on

    def keep_playing 
      @game.ask_question(@current_player)
      @current_player = @current_player == @player1 ?  @player2 : @player1
    end

    while @player1.lives != 0 && @player2.lives != 0 do
      keep_playing
      
      if @player1.lives > 0 && @player2.lives > 0
        puts "#{player1.name}: #{player1.lives}/3 #{player2.name}: #{player2.lives}/3"
        puts "----- NEW TURN -----" 
      end
    end
  end

  def game_over
    if @player1.lives == 0
      winner = @player2
    elsif @player2.lives == 0
      winner = @player1
    end

    puts "----- GAME OVER -----"
    puts "#{winner.name} wins the game with the score of #{winner.lives}/3"
    puts "Goodbye!!!"
    exit
  end
end