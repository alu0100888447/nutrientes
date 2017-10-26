class Alimento
  attr_reader :nombre, :proteinas, :glucidos, :lipidos
  def initialize (nombre, proteinas, glucidos, lipidos)
    @nombre = nombre
    @proteinas = proteinas
    @glucidos = glucidos
    @lipidos = lipidos
  end

  def valorNutricional
    valor = (@proteinas * 4) + (@glucidos * 4) + (@lipidos * 9)
  end

  def to_s
    alimento =  "#{@nombre} | #{@proteinas} | #{@glucidos} | #{lipidos}"
  end
end
