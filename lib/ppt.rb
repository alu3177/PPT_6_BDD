class PiedraPapelTijeras
    attr_reader :humano, :maquina, :tiradas, :ganadoras, :resultados, :resultado
    def initialize (human, machine, plays, wins, results, result)
        @humano = human
        @maquina = machine
        @tiradas = plays
        @ganadoras = wins
        @resultados = results
        @resultado = result
    end

    def obtener_humano
        return @humano
    end

    def obtener_maquina
        @tiradas.sample
    end

end
