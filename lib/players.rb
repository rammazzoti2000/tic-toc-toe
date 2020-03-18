require_relative '../lib/position.rb'

class Player
    attr_accessor :player_1, :player_2 , :current_player , :player_1_drink, :player_2_drink

    def initialize(player_1, player_2, player_1_drink, player_2_drink)
        @player_1 = player_1
        @player_2 = player_2
        @player_1_drink = player_1_drink
        @player_2_drink = player_2_drink
        $current_player = @player_2
        $current_drink = @player_2_drink
    end

    def switch_turn
        $count += 1
        $current_drink == @player_1_drink ? $current_drink = @player_2_drink : $current_drink = @player_1_drink 
        $current_player == @player_1 ? $current_player = @player_2 : $current_player = @player_1
    end
end