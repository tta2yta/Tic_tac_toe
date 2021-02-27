class Game
  def initialize
    @board = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
  end

  def check_full?
    @board.all? do |item|
      item.all? { |val| %w[x y].include?(val) }
    end
  end

  def validate_pos?(pos)
    puts "check #{@board.flatten}"
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
    puts "#{@board[0]} | #{@board[1]} | #{@board[2]}"
    puts '---+---+---'
    puts "#{@board[3]} | #{@board[4]} | #{@board[5]}"
    puts '---+---+---'
    puts "#{@board[6]} | #{@board[7]} | #{@board[8]}"
  end
end
