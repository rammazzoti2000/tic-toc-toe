# spec/players_spec.rb

require 'players'

describe Player do
    let(:player) { Player.new('player1', 'player2', 'player1_drink' , 'player2_drink') }
    let(@board) { Player.board = Array.new(9, ' ') }

    describe '#initialize' do
        it 'should take 4 arguments' do
            player
        end

        it 'returns an ArgumentError if the Player is initialized with no arguments or more than 4 arguments' do
            expect {Player.new}.to raise_error(ArgumentError)
        end

        it "should set the instance variables @player1, @player2, @player1_drink and @player2_drink" do
          expect(player.instance_variable_get(:@player1)).to eq('player1')
          expect(player.instance_variable_get(:@player2)).to eq('player2')
          expect(player.instance_variable_get(:@player1_drink)).to eq('player1_drink')
          expect(player.instance_variable_get(:@player2_drink)).to eq('player2_drink')
        end

        it "should set the instance variable @current_drink to player2_drink" do
          expect(player.instance_variable_get(:@current_drink)).to eq('player2_drink')
        end
    end

    it "should set the instance variables @board, @current_player, @count, @winning_positions" do
      #expect(@board).to eq(@board)
      expect(@current_player).to eq(@player2)
      #expect(@count).to eq(0.zero?)
      # expect(@winning_positions.to_a).to eq([
      #   [0, 1, 2], [3, 4, 5], [6, 7, 8],
      #   [0, 3, 6], [1, 4, 7], [2, 5, 8],
      #   [0, 4, 8], [2, 4, 6]
      # ])
    end


end



# it "should set the instance variables @name, @slogan, and @student_capacity" do
#   expect(bootcamp.instance_variable_get(:@name)).to eq("Map Academy")
#   expect(bootcamp.instance_variable_get(:@slogan)).to eq("Anyone can be a cartographer.")
#   expect(bootcamp.instance_variable_get(:@student_capacity)).to eq(6)
# end