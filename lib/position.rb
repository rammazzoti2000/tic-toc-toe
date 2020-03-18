class Position
    $count = 0
    attr_accessor :get_position
 
    def self.get_position_num
        while $board.include?(" ")
            @get_position = gets.strip.to_i
            if (1..9).include?(@get_position)
                return @get_position
            else
                puts "Try another Number!"
                @get_position = gets.strip.to_i
            end
        end
    end
end