class game
    def initialize
        @board=[[1,2,3],[4,5,6],[7,8,9]]
    end

    def check_full?
        @board.all? do |item|
    
            item.all?{|val| %w[x y].include?(val)}
        end
    end
    def validate_pos?(pos)
        $arr.any? do |x|
            x.any?{|y| return true if y == pos}
        end
    end
    
end