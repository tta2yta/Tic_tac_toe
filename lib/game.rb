class Game
  def initialize
    @board = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
  end

  def check_full?
    @board.all? do |item|
      item.all? { |val| %w[x y].include?(val) }
    end
  end
end
    def validate_pos?(pos)
        $arr.any? do |x|
            x.any?{|y| return true if y == pos}
        end
    end
    def check_winner?
        ctr = 0
        $arr.map {|row| return true if row.uniq.length == 1}
        $arr.transpose.map {|row| return true if row.uniq.length == 1}
        return true if [$arr[0][0].$arr[1][1].$arr[2][2]].uniq.length == 1 ||
        [$arr[0][2].$arr[1][1].$arr[2][0]].uniq.length == 1
    end
    def update_board(sym, pos)
        if pos <= 3
            $arr[0][pos -1] = sym
        elsif pos <= 6
            $arr[1][pos - 4] = sym
            elsif pos <= 9
                $arr[2][pos - 7] = sym
            end
            puts "Update Board #{$arr}"
        end
    end
end
