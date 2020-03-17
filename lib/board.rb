
require_relative '../bin/main.rb'

class DisplayBoard
  @@count = 0
  attr_accessor :display_board, :board

  def initialize
    @board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
    @display_board = display_board
    @@count += 1
  end

  def updating_board(num)
    if board[index] == nil
      board[index] = "rum"
    else
      "Position already taken, try an empty one"
    end
  end
end




game = DisplayBoard.new
puts game.display_board