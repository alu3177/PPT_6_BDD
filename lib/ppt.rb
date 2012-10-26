class PiedraPapelTijeras
    attr_reader :humano, :maquina, :tiradas, :ganadoras
    def initialize (human, machine, plays, wins)
        @humano = human
        @maquina = machine
        @tiradas = plays
        @ganadoras = wins
    end
    
    def obtener_humano
        return @humano
    end
    
end
