require 'ppt'

describe PiedraPapelTijeras do

    let (:humano) { :piedra }
    let (:maquina) { :tijeras }
    let (:ganadoras) { {:piedra => :tijeras, :papel => :piedra, :tijeras => :papel} }
    let (:tiradas) { ganadoras.keys.uniq }
    let (:resultados) { [:gano, :pierdo, :empato] }
    let (:resultado) { :gano }  # Piedra Vs Tijeras

    before :each do     # Usamos :each en lugar de :all, para evitar que entren en conflicto los tests
        @ppt_obj = PiedraPapelTijeras.new(humano, maquina, tiradas, ganadoras, resultados)
    end

    it "Debe existir una tirada para el humano" do
        @ppt_obj.humano.should == humano
    end

    it "Debe existir una tirada para la maquina" do
        @ppt_obj.maquina.should == maquina
    end

    it "Debe existir una lista de jugadas posibles y quien gana" do
        @ppt_obj.tiradas.should == @ppt_obj.ganadoras.keys.uniq
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
        @ppt_obj.jugar
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

    it "Se debe comprobar que las tiradas de la maquina y del humano no son siempre la misma" do
        human = []
        machine = []
        30.times do
            @ppt_obj.humano = @ppt_obj.tiradas.sample
            human.push @ppt_obj.humano
            machine.push @ppt_obj.obtener_maquina
        end
        ( (human.uniq.length and machine.uniq.length) >= @ppt_obj.tiradas.length )
    end



end
