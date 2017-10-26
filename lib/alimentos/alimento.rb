class Alimento
  attr_reader :nombre, :proteinas, :glucidos, :lipidos
  def initialize (nombre, proteinas, glucidos, lipidos)
    @nombre = nombre
    @proteinas = proteinas
    @glucidos = glucidos
    @lipidos = lipidos
  end

  def to_s
    s =  "#{@nombre} | #{@proteinas} | #{@glucidos} | #{lipidos}"
  end
end
