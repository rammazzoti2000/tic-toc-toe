class Position
    $count = 0
    attr_accessor :get_position

    def initialize
        @get_position = nil
    end
 
    def position_num
        while (1..9).include?(@get_position) == false
            @get_position = gets.strip.to_i
            if (1..9).include?(@get_position)
                @get_position
            else
                @get_position = gets.strip.to_i
            end
        end
    end
end


# geg = Position.new
# puts geg.position_num
