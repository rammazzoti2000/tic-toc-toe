# spec/players_spec.rb

require 'players'

describe Player do
    let(:player) { Player.new('player1', 'player2', 'player1_drink' , 'player2_drink') }
    let(:new_board) {@board = Array.new(9, ' ')}
    let(:current_player) {@current_player = @player2}
    let(:num) {num = Numeric}
    let(:count) {@count = 0}
    let(:winning_positions) {@winning_positions = [
    [0, 1, 2], [3, 4, 5], [6, 7, 8],
    [0, 3, 6], [1, 4, 7], [2, 5, 8],
    [0, 4, 8], [2, 4, 6]
    ]}
    let(:players) {players = @player2 || @player1}
    let(:current_players) {@current_player}
    let(:current_drink) {@player2_drink}

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
      it 'should accept Number as a single agument to set a value for @board' do
        expect(Player.boards=(num)).to eq(new_board = num)
      end

      it 'ArgumentError num is not a Number' do
        expect {Player.boards=(num)}.not_to raise_error(new_board != num)
      end
    end

    describe '.counts' do
      it 'should get the variable @counts' do
        expect(Player.counts).to eq(count)
      end
    end

    describe '.counts=(num)' do
      it 'should accept Number as a single agument to set a value for @count' do
        expect(Player.counts=(num)).to eq(count = num)
      end

      it 'ArgumentError num is not a Number' do
        expect {Player.counts=(num)}.not_to raise_error(count != num)
      end
    end

    describe '.winning_positionss' do
      it 'should be get the variable @winning_positions' do
        expect(Player.winning_positionss).to eq(winning_positions)
      end
      it "should be an Array" do
        expect(Player.winning_positionss).to be_a(Array)
      end
      it 'should be not an empty.Array' do 
        expect(Player.winning_positionss).not_to eq(winning_positions.empty?)
      end
    end

    describe '.current_players' do
      it 'should get the variable @current_players' do
        expect(Player.current_players).to eq(current_players)
      end
    end

    describe '.current_players=(player)' do
      it 'should set the variable @current_players to player' do
        expect(Player.current_players=(players)).to eq(@player2)
      end

      it 'should take single argument' do
         expect{Player.current_players=(players)}.not_to raise_error(ArgumentError)
      end
    end

    describe '.current_drinks' do
      it 'should set the variable @current_drinks to current_drink' do
        expect(Player.current_drinks=()).to eq(@current_drinks)
      end

      it 'should take single argument' do
         expect{Player.current_players=()}.not_to raise_error(ArgumentError)
      end
    end

end

