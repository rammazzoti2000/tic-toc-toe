require_relative 'players.rb'

class DisplayBoard < Player
  def self.update_board(num)
    if Player.board[num] == ' '
      Player.board[num] = Player.current_drink
      display_board(Player.board)
    else
      'Position already taken, try an empty one!'
    end
  end
end
