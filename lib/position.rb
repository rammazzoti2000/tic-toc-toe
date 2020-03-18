require_relative './players.rb'

class Position < Player
  attr_writer :get_position

  def self.get_position_num
    while Player.board.include?(' ')
      @get_position = gets.strip.to_i
      return @get_position if (1..9).include?(@get_position)

      puts 'Error, invaild input!!! Choose a Number between 1 - 9'
    end
  end
end
