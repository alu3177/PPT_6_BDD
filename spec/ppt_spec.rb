require 'ppt'

describe PiedraPapelTijeras do

    let (:humano) { :piedra }
    let (:maquina) { :tijeras }
    let (:tiradas) { [:piedra, :papel, :tijeras] }

    before :all do
        @ganadoras = { :piedra => :tijeras,
                       :papel => :piedra,
                       :tijeras => :papel
                     }
        @ppt_obj = PiedraPapelTijeras.new(humano, maquina, tiradas, @ganadoras)
    end
    
    it "Debe existir una tirada para el humano" do
        @ppt_obj.humano.should == humano
    end
    
    it "Debe existir una tirada para la maquina" do
        @ppt_obj.maquina.should == maquina
    end
    
    it "Debe existir una lista de jugadas posibles y quien gana" do
        @ppt_obj.tiradas.should == tiradas
        @ppt_obj.ganadoras.should == @ganadoras
    end
    
    it "Se debe invocar al metodo obtener_humano() para recoger la tirada del humano y que esta sea valida" do
        @ppt_obj.tiradas.include? @ppt_obj.obtener_humano()
    end
    
        

end
