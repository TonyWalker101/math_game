require './Game'

players = ARGV
new_game = Game.new(players)

new_game.game_on
new_game.game_over