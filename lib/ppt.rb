class PiedraPapelTijeras
    attr_accessor :humano
    attr_reader :maquina, :tiradas, :ganadoras, :resultados, :resultado
    def initialize (human, machine, plays, wins, results)
        @humano = human
        @maquina = machine
        if plays.kind_of? Array
            @tiradas = plays
        else
            @tiradas = wins.keys.uniq
        end
        @ganadoras = wins
        @resultados = results
        @resultado = nil
    end

    def obtener_humano
        return @humano
    end

    def obtener_maquina
        @maquina = @tiradas.sample
    end

    def jugar
        case @humano
            when @maquina
                @resultado = @resultados[2]
            when @ganadoras[@maquina]
                @resultado = @resultados[1]
            else
                @resultado = @resultados[0]
        end
        return @resultado
    end

end
