class Player
  def initialize
    @names = []
    @sym = { 'pl1' => '', 'pl2' => '' }
  end

  def player_name(name)
    @names.push(name)
  end

  def get_player_name(index)
    @names[index]
  end

  def player_symbol?(sym)
    if %w[X Y].include?(sym)
      @sym['pl1'] = sym
      @sym['pl2'] = sym == 'X' ? 'Y' : 'X'
      return true
    end
    false
  end

  def get_player_symbol(index)
    @sym[index]
  end
end
