require "spec_helper"
require "./lib/alimentos/alimento"
RSpec.describe Alimentos do

  before :each do
    @huevoFrito = Alimento.new("Huevo Frito", 14.1, 0.0, 19.5)
    @lecheVaca = Alimento.new("Leche Vaca", 3.3, 4.8, 3.2)
    @yogurt = Alimento.new("Yogurt", 3.8, 4.9, 3.8)
    @cerdo = Alimento.new("Cerdo", 21.5, 0.0, 6.3)
    @ternera = Alimento.new("Ternera", 21.1, 0.0, 3.1)
    @pollo = Alimento.new("Pollo", 20.6, 0.0, 5.6)
    @bacalao = Alimento.new("Bacalao", 17.7, 0.0, 0.4)
    @atun = Alimento.new("Atun", 21.5, 0.0, 15.5)
    @salmon = Alimento.new("Salmon", 19.9, 0.0, 13.6)
    @aceiteOliva = Alimento.new("Aceite de Oliva", 0.0, 0.2, 99.6)
    @chocolate = Alimento.new("Chocolate", 5.3, 47.0, 30.0)
    @azucar = Alimento.new("Azucar", 0.0, 99.8, 0.0)
    @arroz = Alimento.new("Arroz", 6.8, 77.7, 0.6)
    @lentejas = Alimento.new("Lentejas", 23.5, 52.0, 1.4)
    @papas = Alimento.new("Papas", 2.0, 15.4, 0.1)
    @tomate = Alimento.new("Tomate", 1.0, 3.5, 0.2)
    @cebolla = Alimento.new("Cebolla", 1.3, 5.8, 0.3)
    @manzana = Alimento.new("Manzana", 0.3, 12.4, 0.4)
    @platanos = Alimento.new("Platanos", 1.2, 21.4, 0.2)
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

  describe "# Calculo del valor nutricional" do
    it "Valor nutricional correcto" do
      expect(@huevoFrito.valorNutricional).to eq(231.9)
    end
  end

end
