require "spec_helper"

RSpec.describe Alimentos do

  before :all do

    # Creacion de los alimentos
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

    # Creacion de los grupos de Alimentos
    # Huevos, Lacteos y Helados
    @huevoFritoG = GAlimento.new("Huevos, Lacteos y Helados", "Huevo Frito", 14.1, 0.0, 19.5)
    @lecheVacaG = GAlimento.new("Huevos, Lacteos y Helados", "Leche Vaca", 3.3, 4.8, 3.2)
    @yogurtG = GAlimento.new("Huevos, Lacteos y Helados", "Yogurt", 3.8, 4.9, 3.8)

    # Carnes y derivados
    @cerdoG = GAlimento.new("Carnes y derivados", "Cerdo", 21.5, 0.0, 6.3)
    @terneraG = GAlimento.new("Carnes y derivados", "Ternera", 21.1, 0.0, 3.1)
    @polloG = GAlimento.new("Carnes y derivados", "Pollo", 20.6, 0.0, 5.6)

    # Pescados y mariscos
    @bacalaoG = GAlimento.new("Pescados y mariscos", "Bacalao", 17.7, 0.0, 0.4)
    @atunG = GAlimento.new("Pescados y mariscos", "Atun", 21.5, 0.0, 15.5)
    @salmonG = GAlimento.new("Pescados y mariscos", "Salmon", 19.9, 0.0, 13.6)

    # Alimentos grasos
    @aceiteOlivaG = GAlimento.new("Alimentos grasos", "Aceite de Oliva", 0.0, 0.2, 99.6)
    @mantequillaG = GAlimento.new("Alimentos grasos", "Mantequilla", 0.7, 0.0, 83.2)
    @chocolateG = GAlimento.new("Alimentos grasos", "Chocolate", 5.3, 47.0, 30.0)

    # Alimentos ricos en carbohidratos
    @azucarG = GAlimento.new("Alimentos ricos en carbohidratos", "Azucar", 0.0, 99.8, 0.0)
    @arrozG = GAlimento.new("Alimentos ricos en carbohidratos", "Arroz", 6.8, 77.7, 0.6)
    @lentejasG = GAlimento.new("Alimentos ricos en carbohidratos", "Lentejas", 23.5, 52.0, 1.4)
    @papasG = GAlimento.new("Alimentos ricos en carbohidratos", "Papas", 2.0, 15.4, 0.1)

    # Verduras y Hortalizas
    @tomateG = GAlimento.new("Verduras y Hortalizas", "Tomate", 1.0, 3.5, 0.2)
    @cebollaG = GAlimento.new("Verduras y Hortalizas", "Cebolla", 1.3, 5.8, 0.3)
    @calabazaG = GAlimento.new("Verduras y Hortalizas", "Calabaza", 1.1, 4.8, 0.1)

    # Frutas
    @manzanaG = GAlimento.new("Frutas", "Manzana", 0.3, 12.4, 0.4)
    @platanosG = GAlimento.new("Frutas", "Platanos", 1.2, 21.4, 0.2)
    @perasG = GAlimento.new("Frutas", "Peras", 0.5, 12.7, 0.3)

    # Creacion de la Lista
    @lista = Lista.new()

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
    it "Valor nutricional Huevo Frito" do
      expect(@huevoFrito.valorNutricional).to eq(231.9)
    end
    it "Valor nutricional Leche de VAca" do
      expect(@lecheVaca.valorNutricional).to eq(61.2)
    end
    it "Valor nutricional Yogurt" do
      expect(@yogurt.valorNutricional).to eq(69.0)
    end
    it "Valor nutricional Cerdo" do
      expect(@cerdo.valorNutricional).to eq(142.7)
    end
    it "Valor nutricional Ternera" do
      expect(@ternera.valorNutricional).to eq(112.30000000000001)
    end
    it "Valor nutricional Pollo" do
      expect(@pollo.valorNutricional).to eq(132.8)
    end
    it "Valor nutricional Bacalao" do
      expect(@bacalao.valorNutricional).to eq(74.39999999999999)
    end
    it "Valor nutricional Atun" do
      expect(@atun.valorNutricional).to eq(225.5)
    end
    it "Valor nutricional Salmon" do
      expect(@salmon.valorNutricional).to eq(202.0)
    end
    it "Valor nutricional Aceite de Oliva" do
      expect(@aceiteOliva.valorNutricional).to eq(897.1999999999999)
    end
    it "Valor nutricional Chocolate" do
      expect(@chocolate.valorNutricional).to eq(479.2)
    end
    it "Valor nutricional Azucar" do
      expect(@azucar.valorNutricional).to eq(399.2)
    end
    it "Valor nutricional Arroz" do
      expect(@arroz.valorNutricional).to eq(343.4)
    end
    it "Valor nutricional Lentejas" do
      expect(@lentejas.valorNutricional).to eq(314.6)
    end
    it "Valor nutricional Papas" do
      expect(@papas.valorNutricional).to eq(70.5)
    end
    it "Valor nutricional Tomate" do
      expect(@tomate.valorNutricional).to eq(19.8)
    end
    it "Valor nutricional Cebolla" do
      expect(@cebolla.valorNutricional).to eq(31.099999999999998)
    end
    it "Valor nutricional Manzana" do
      expect(@manzana.valorNutricional).to eq(54.400000000000006)
    end
    it "Valor nutricional Platanos" do
      expect(@platanos.valorNutricional).to eq(92.19999999999999)
    end
  end

  describe "# Pruebas de clase, tipo y jerarquia" do
    it "Prueba Clases con @huevoFrito y @huevoFritoG" do
      expect(@huevoFritoG.class).to eq(GAlimento)
      expect(@huevoFrito.class).to eq(Alimento)
      expect(@huevoFritoG.instance_of?GAlimento).to eq(true)
      expect(@huevoFritoG.instance_of?Alimento).to eq(false)
    end
    it "Prueba tipo de objeto @manzana y @manzanaG" do
      expect(@manzanaG.respond_to?:valorNutricional).to eq(true)
      expect(@manzanaG.respond_to?:to_s).to eq(true)
      expect(@manzana.respond_to?:valorNutricional).to eq(true)
    end
    it "Prueba de jerarquia con @atun y @atunG" do
      expect(@atunG.is_a?GAlimento).to eq(true)
      expect(@atun.is_a?Alimento).to eq(true)
      expect(@atunG.is_a?Alimento).to eq(true)
      expect(@atun.is_a?GAlimento).to eq(false)
      expect(@atunG.is_a?Object).to eq(true)
      expect(@atun.is_a?Object).to eq(true)
    end
  end

  describe "# Pruebas push" do
    it "Push" do
      expect(@lista.push(@huevo)).to eq(1)
      expect(@lista.push(@platanos)).to eq(2)
    end
  end
  describe "# Pruebas pop_head" do
    it "Pop_head" do
      expect(@lista.pop_head).to eq(@platanos)
    end
  end

  describe "# Pruebas pop_tail" do
    it "Pop_tail" do
      expect(@lista.pop_tail).to eq(@huevo)
    end
  end

end
