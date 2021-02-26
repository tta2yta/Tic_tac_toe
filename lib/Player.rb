class Player
   @@names = []
   @@sym 
   @@pl_1_sym
   
   def initialize()

   end

   def set_player_name(name)
    @@names.push(name)
   end
   def set_player_symbol(sym)
    if ['X', 'Y'].include?(sym)
        sym == 'Y'?@@pl_1_sym = 'X' : @@pl_1_sym = 'Y'
        @@pl_2_sym = 'Y' if @@pl_1_sym == 'X'
        @@pl_2_sym = 'X' if @@pl_1_sym == 'Y'
    end
    end
def get_player_symbol()
    
end
end