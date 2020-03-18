require_relative 'position.rb'

class DisplayBoard < Player
  $board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
  
  attr_accessor  :board

  def initialize
  end

  def update_board(num)
      Position.get_position_num
      $board[num] = $current_drink
      display_board($board)
    end
  end
end