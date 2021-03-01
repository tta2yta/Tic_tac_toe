class Game
  def initialize
    @board = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
  end

  def check_full?
    @board.flatten.all? do |item|
      %w[X Y].include?(item)
    end
  end

  def validate_pos?(pos)
    @board.flatten.any? do |x|
      return true if x == pos.to_i
    end
  end

  def check_winner?
    @board.map { |row| return true if row.uniq.length == 1 }
    @board.transpose.map { |row| return true if row.uniq.length == 1 }
    return true if [@board[0][0], @board[1][1], @board[2][2]].uniq.length == 1 ||
                   [@board[0][2], @board[1][1], @board[2][0]].uniq.length == 1
  end

  def update_board(sym, pos)
    if pos <= 3
      @board[0][pos - 1] = sym
    elsif pos <= 6
      @board[1][pos - 4] = sym
    elsif pos <= 9
      @board[2][pos - 7] = sym
    end
  end

  def board()
    @cell = @board.flatten
    puts "#{@cell[0]} | #{@cell[1]} | #{@cell[2]}"
    puts '---+---+---'
    puts "#{@cell[3]} | #{@cell[4]} | #{@cell[5]}"
    puts '---+---+---'
    puts "#{@cell[6]} | #{@cell[7]} | #{@cell[8]}"
  end
end
