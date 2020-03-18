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

  def self.board
    puts
    @board
  end

  def self.board=(num)
    puts
    @board = num
  end

  def self.current_player
    puts
    @current_player
  end

  def self.current_player=(player)
    puts
    @current_player = player
  end

  def self.current_drink=(*)
    puts
    @current_drink = @player2_drink
  end

  def self.winning_positions
    puts
    @winning_positions
  end

  def self.count
    puts
    @count
  end

  def self.count=(num)
    puts
    @count = num
  end

  def update_board(num)
    if Player.board[num] == ' '
      Player.board[num] = @current_drink
      display_board(@board)
    else
      'Position already taken, try an empty one!'
    end
  end

  def switch_turn
    Player.count += 1
    @current_drink == @player1_drink ? @current_drink = @player2_drink : @current_drink = @player1_drink
    @current_player == @player1 ? @current_player = @player2 : @current_player = @player1
  end
end
