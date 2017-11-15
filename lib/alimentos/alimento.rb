class Alimento
  include Comparable
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

  def ==(objeto)
    if objeto.is_a?Alimento
      valorNutricional == objeto.valorNutricional
    else
      false
    end
  end
end
class GAlimento < Alimento
  attr_reader :nombreG

  def initialize (nombreG, nombreA, proteinas, glucidos, lipidos)
    super(nombreA, proteinas, glucidos, lipidos)
    @nombreG = nombreG
  end
end
