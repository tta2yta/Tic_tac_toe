class game
    def initialize
        @board=[[1,2,3],[4,5,6],[7,8,9]]
    end

    def check_full?
        @board.all? do |item|
    
            item.all?{|val| %w[x y].include?(val)}
        end
    end
end