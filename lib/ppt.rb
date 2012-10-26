class PiedraPapelTijeras
    attr_accessor :humano
    attr_reader :maquina, :tiradas, :ganadoras, :resultados, :resultado
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

    def jugar
        case @humano
            when @maquina
                return @resultados[2]
            when @ganadoras[@maquina]
                return @resultados[1]
            else
                return @resultados[0]
        end
    end

end
