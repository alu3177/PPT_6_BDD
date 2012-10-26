require 'ppt'

describe PiedraPapelTijeras do

    let (:humano) { :piedra }
    let (:maquina) { :tijeras }
    let (:tiradas) { [:piedra, :papel, :tijeras] }
    let (:ganadoras) { {:piedra => :tijeras, :papel => :piedra, :tijeras => :papel} }
    let (:resultados) { [:gane, :perdi, :empate] }
    let (:resultado) { nil }

    before :all do
        @ppt_obj = PiedraPapelTijeras.new(humano, maquina, tiradas, ganadoras, resultados, resultado)
    end

    it "Debe existir una tirada para el humano" do
        @ppt_obj.humano.should == humano
    end

    it "Debe existir una tirada para la maquina" do
        @ppt_obj.maquina.should == maquina
    end

    it "Debe existir una lista de jugadas posibles y quien gana" do
        @ppt_obj.tiradas.should == tiradas
        @ppt_obj.ganadoras.should == ganadoras
    end

    it "Se debe invocar al metodo obtener_humano() para recoger la tirada del humano y que esta sea valida" do
        @ppt_obj.tiradas.include? @ppt_obj.obtener_humano
    end

    it "Se debe invocar al metodo obtener_maquina() para recoger la tirada de la maquina y que esta sea valida" do
        @ppt_obj.tiradas.include? @ppt_obj.obtener_maquina
    end

    it "Debe existir una lista de resultados de un juego desde el punto de vista de la maquina" do
        @ppt_obj.resultados.should == resultados
    end

    it "Debe existir un resultado para un juego, desde el punto de vista de la maquina" do
        @ppt_obj.resultado.should == resultado
    end

    it "Se debe invocar al metodo jugar() para determinar el ganador de la tirada" do
        @ppt_obj.resultados.include? @ppt_obj.jugar
    end

    it "Se debe de comprobar que las tiradas de la maquina, al ser aleatorias, recorren todas las posibilidades" do
        machine = []
        30.times do
            machine.push @ppt_obj.obtener_maquina
        end
        machine.uniq.length.should >= @ppt_obj.tiradas.length
    end



end
