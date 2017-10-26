require "spec_helper"
require "./lib/alimentos/alimento"
RSpec.describe Alimentos do

  before :each do
    @huevoFrito = Alimento.new("Huevo Frito", 14.1, 0.0, 19.5)
  end

  describe "# Almacenamiento de los datos" do
    it "El alimento tiene nombre?" do
      expect(@huevoFrito.nombre).not_to be nil
    end

    it "El alimento tiene proteinas?" do
      expect(@huevoFrito.proteinas).not_to be nil
    end

    it "El alimento tiene glucidos?" do
      expect(@huevoFrito.glucidos).not_to be nil
    end

    it "El alimento tiene lipidos?" do
      expect(@huevoFrito.lipidos).not_to be nil
    end
  end

  describe "# Formateo de salida por pantalla" do
    it "Los datos del alimento son los correctos?" do
      expect(@huevoFrito.to_s).to eq("Huevo Frito | 14.1 | 0.0 | 19.5")
    end
  end

end
