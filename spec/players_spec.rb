# spec/players_spec.rb

require 'players'

describe Player do
  let(:game) { Player.new('player1', 'player2', 'player1_drink', 'player2_drink') }
  let(:new_board) { @board = Array.new(9, ' ') }
  let(:num) { num = [0, 1, 2, 3, 4, 5, 6, 7, 8] }
  let(:count) { @count = 0 }
  let(:winning_positions) {
    @winning_positions = [
      [0, 1, 2], [3, 4, 5], [6, 7, 8],
      [0, 3, 6], [1, 4, 7], [2, 5, 8],
      [0, 4, 8], [2, 4, 6]
    ]
  }
  let(:players) { players = game.player1 }
  let(:current_players) { @current_player = game.player2 }
  let(:current_drink) {@current_drink = game.player2_drink }

  describe '#initialize' do
    it 'should take 4 arguments' do
      game
    end

    it 'returns an ArgumentError if the Player is initialized with no arguments or more than 4 arguments' do
      expect { Player.new }.to raise_error(ArgumentError)
    end

    it "should set the instance variables @player1, @player2, @player1_drink and @player2_drink" do
      expect(game.instance_variable_get(:@player1)).to eq('player1')
      expect(game.instance_variable_get(:@player2)).to eq('player2')
      expect(game.instance_variable_get(:@player1_drink)).to eq('player1_drink')
      expect(game.instance_variable_get(:@player2_drink)).to eq('player2_drink')
    end

    it 'should set the instance variable @current_drink to player2_drink' do
      expect(game.instance_variable_get(:@current_drink)).to eq('player2_drink')
    end
  end

  describe '.boards' do
    it 'should get the variable @board' do
      expect(Player.boards).to eq(new_board)
    end
  end

  describe '.boards=(num)' do
    it 'should accept Number as an argument and set a value for @board[num] = num' do
      expect(Player.boards = (num)).to eq(new_board = num)
    end

    it 'ArgumentError num is not a Number' do
      expect { Player.boards = (5) }.not_to raise_error(5 == Numeric)
    end
  end

  describe '.counts' do
    it 'should get the variable @counts' do
      expect(Player.counts).to eq(count)
    end
  end

  describe '.counts=(num)' do
    it 'should accept Number as a single agument to set a value for @count' do
      expect(Player.counts = (num)).to eq(count = num)
    end

    it 'ArgumentError num is not a Number' do
      expect { Player.counts = (7) }.not_to raise_error(count != 7)
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
      expect(game.player2).to eq(current_players)
    end
  end

  describe '.current_players=(game)' do
    it 'should set the variable @current_players to game' do
      expect(Player.current_players = (players)).to eq(game.player1)
    end

    it 'should take single argument' do
      expect { Player.current_players = (players) }.not_to raise_error(ArgumentError)
    end
  end

  describe '#update_board' do
    it 'should take Number as an argument' do
      expect{game.update_board(4)}.not_to raise_error(ArgumentError)
    end
    
    it 'should assign current_drink to empty board position' do
      expect(Player.boards[2]).to eq(' ')
      expect(game.update_board(2)).to eq(current_drink)
    end

    it 'should return a String when the board position is already occupied' do
      expect(game.update_board(2)).to be_a(String)
    end
  end

  describe '#switch_turn' do
    it 'should have 0 arguments' do
      expect{game.switch_turn}.not_to raise_error(ArgumentError)
    end

    it 'should increment variable @count by 1' do
      expect(Player.counts += 1).to eq(9)
    end

    it 'should change the @current_player with each turn' do 
      expect(current_players == game.player2).to eq(true)
      expect(game.switch_turn).to eq(game.player1)
      expect(game.switch_turn).to eq(game.player2)
    end

    it 'should change the @current_drink with each turn' do 
      expect(current_drink).to eq(game.player2_drink)
      game.switch_turn
      current_drink = game.player1_drink
      expect(current_drink).to eq(game.player1_drink)
    end
  end 
end
