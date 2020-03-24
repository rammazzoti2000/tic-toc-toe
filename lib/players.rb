class Player
  attr_reader :player1, :player2, :player1_drink, :player2_drink
  attr_accessor :current_player, :current_drink

  def initialize(player1, player2, player1_drink, player2_drink)
    @player1 = player1
    @player2 = player2
    @player1_drink = player1_drink
    @player2_drink = player2_drink
    @current_drink = @player2_drink
  end

  @board = Array.new(9, ' ')
  @current_player = @player2
  @count = 0
  @winning_positions = [
    [0, 1, 2], [3, 4, 5], [6, 7, 8],
    [0, 3, 6], [1, 4, 7], [2, 5, 8],
    [0, 4, 8], [2, 4, 6]
  ]

  def self.boards
    @board
  end

  def self.boards=(num)
    @boards = num
  end

  def self.current_players
    @current_player
  end

  def self.current_players=(player)
    @current_player = player
  end

  def self.current_drinks=(*)
    @current_drink = @player2_drink
  end

  def self.winning_positionss
    @winning_positions
  end

  def self.counts
    @count
  end

  def self.counts=(num)
    @count = num
  end

  def update_board(num)
    if Player.boards[num] == ' '
      Player.boards[num] = @current_drink
    else
      'Position already taken, try an empty one!'
    end
  end

  def switch_turn
    Player.counts += 1
    @current_drink = @current_drink == @player1_drink ? @player2_drink : @player1_drink
    @current_player = @current_player == @player1 ? @player2 : @player1
  end
end
