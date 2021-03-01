class Player
  attr_reader :sym
  def initialize
    @names = []
    @sym = []
  end

  def player_name(name)
    @names.push(name)
  end

  def get_player_name(index)
    @names[index]
  end

  def player_symbol?(sym)
    if %w[X Y].include?(sym)
      @sym.push(sym)
      @sym.push(sym == 'X' ? 'Y' : 'X')
      return true
    end
    false
  end

  def get_player_symbol(index)
    @sym[index]
  end
end
