# spec/players_spec.rb

require 'players'

describe Player do
    let(:player) { Player.new('player1', 'player2', 'player1_drink' , 'player2_drink') }
    let(:new_board) {@board = Array.new(9, ' ')}
    let(:current_player) {@current_player = @player2}
    let(:num) {num = Numeric}
  #   @count = 0
  #   @winning_positions = [
  #   [0, 1, 2], [3, 4, 5], [6, 7, 8],
  #   [0, 3, 6], [1, 4, 7], [2, 5, 8],
  #   [0, 4, 8], [2, 4, 6]
  # ]
    

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

        it 'should set the instance variable @current_drink to player2_drink' do
          expect(player.instance_variable_get(:@current_drink)).to eq('player2_drink')
        end
    end

    describe '.boards' do
      it 'should get the variable @board' do
        expect(Player.boards).to eq(new_board)
      end
    end

    describe '.boards=(num)' do
      it 'should accept Number as a single agument' do
        expect(Player.boards=(num)).to eq(new_board = num)
      end
    end


end

