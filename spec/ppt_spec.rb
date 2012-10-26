require 'ppt'

describe PiedraPapelTijeras do

    before :all do
        @ppt_obj = PiedraPapelTijeras.new(:piedra)
    end
    
    it "Debe existir una tirada para el humano" do
        @ppt_obj.humano.should == :piedra
    end
        

end
