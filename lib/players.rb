require_relative '../bin/main.rb'
require_relative 'position.rb'

class Player
    attr_accessor :player_1, :player_2 , @current_player  

    def initialize(player_1,player_2)
        @player_1 = player_1
        @player_2 = player_2
        @current_player  = @player_1
    end

    def switch_turn
        @current_player == @player_1 ? @current_player = @player_2 : @current_player = @player_1
    end


end

players = Player.new($layer_1, $player_2)
players.player_1
players.player_2