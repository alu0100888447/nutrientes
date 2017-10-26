require "spec_helper"
require "./lib/alimentos/alimento"
RSpec.describe Alimentos do

  before :each do
    @huevoFrito = Alimento.new("Huevo Frito", 14.1, 0.0, 19.5)
  end

  describe "# Almacenamiento de los datos" do
    it "El nombre del alimento es el correcto" do
      expect(@huevoFrito.nombre).to eq("Huevo Frito")
    end

    it "La cantidad de proteinas por gramos son correctas" do
      expect(@huevoFrito.proteinas).to eq(14.1)
    end

    it "La cantidad de glucidos por gramos son correctas" do
      expect(@huevoFrito.glucidos).to eq(0.0)
    end

    it "La cantidad de lipidos por gramos son correctas" do
      expect(@huevoFrito.lipidos).to eq(19.5)
    end
  end

  describe "# Formateo de salida por pantalla" do
    it "Salida por pantalla: nombre | proteinas | glucidos | lipidos" do
      expect(@huevoFrito.to_s).to eq("Huevo Frito | 14.1 | 0.0 | 19.5")
    end
  end

end
