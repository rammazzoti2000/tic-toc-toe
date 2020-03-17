#require_relative '../bin/main.rb'
#require_relative 'position.rb'

class DisplayBoard
  $board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
  
  attr_accessor  :board

  def initialize
  end

  def update_board(num)
    if $board[num].length < 2
      $board[num] = "rum"
      display_board($board)
    else
      "Position already taken, try an empty one"
    end
  end
end

# game = DisplayBoard.new
# puts game.update_board(2)