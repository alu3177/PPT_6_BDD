require 'ppt'
ganadoras = { :piedra => :tijeras,
              :papel => :piedra,
              :tijeras => :papel
            }
tiradas = ganadoras.keys

resultados = [:gano, :pierdo, :empato]

ppt = PiedraPapelTijeras.new(:piedra, nil, nil, ganadoras, resultados)
ppt.obtener_maquina # Generamos una jugada al azar

case ppt.jugar
    when :gano
        puts "Felicidades HAS GANADO        #{ppt.humano} VS #{ppt.maquina} !!"
    when :pierdo
        puts "Lo siento HAS PERDIDO         #{ppt.humano} VS #{ppt.maquina}"
    when :empato
        puts "Ha habido un empate ...       #{ppt.humano} VS #{ppt.maquina}"
end
