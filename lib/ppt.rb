class PiedraPapelTijeras
    attr_reader :humano, :maquina, :tiradas, :ganadoras, :resultados
    def initialize (human, machine, plays, wins, results)
        @humano = human
        @maquina = machine
        @tiradas = plays
        @ganadoras = wins
        @resultados = results
    end
    
    def obtener_humano
        return @humano
    end
    
    def obtener_maquina
        @tiradas.sample
    end
    
end
