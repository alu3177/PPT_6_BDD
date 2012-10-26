require 'ppt'

describe PiedraPapelTijeras do

    let (:humano) { :piedra }
    let (:maquina) { :tijeras }

    before :all do
        @ppt_obj = PiedraPapelTijeras.new(humano, maquina)
    end
    
    it "Debe existir una tirada para el humano" do
        @ppt_obj.humano.should == humano
    end
    
    it "Debe existir una tirada para la maquina" do
        @ppt_obj.maquina.should == maquina
    end
    
        

end
