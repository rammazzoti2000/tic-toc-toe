require_relative 'position.rb'
require_relative 'players.rb'

class DisplayBoard < Player
  $board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
  
  attr_accessor  :board

  def self.update_board(num)
    if $board[num] == " "
    $board[num] = $current_drink
      display_board($board)
    else
      "Position already taken, try an empty one!"
    end
  end
end