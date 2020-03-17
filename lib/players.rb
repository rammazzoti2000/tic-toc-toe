require_relative '../bin/main.rb'
class Player
    attr_accessor :player_1, :player_2 

    def initialize(player_1,player_2)
        @player_1 = player_1
        @player_2 = player_2
    end
end

puts players = Player.new($layer_1, $player_2)
puts players.player_1
puts players.player_2