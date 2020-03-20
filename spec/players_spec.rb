# spec/players_spec.rb

require 'players'

describe Player do
    let(:player) { Player.new('player1', 'player2', 'player1_drink' , 'player2_drink') }

    describe '#initialize' do
        it 'should take 4 arguments' do
            player
        end

        it 'returns an ArgumentError if the Player is initialized with no arguments or more than 4 arguments' do
            expect {Player.new}.to raise_error(ArgumentError)
        end
    end


end


