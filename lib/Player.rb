class Player
    @@names=[]
    @@sym={"pl1"=>"","pl2"=>""}
    @@pl_1_sym

    def initialize()

    end

    def set_player_name(name)
        @@names.push(name)
    end

    def get_player_name(index)
        @@names[index]
    end

    def set_player_symbol?(sym)
        if ['X', 'Y'].include?(sym)
            @@sym["pl1"]=sym
            sym=='X'?@@sym["pl2"]='Y' : @@sym["pl2"]='X'
            return true
        end
       return false

    end

    def get_player_symbol(index)
     @@sym[index]
    end
end