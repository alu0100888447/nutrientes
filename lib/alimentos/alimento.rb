class Alimento
  attr_reader :nombre
  def initialize (nombre, proteinas, glucidos, lipidos)
    @nombre = nombre
    @proteinas = proteinas
    @glucidos = glucidos
    @lipidos = lipidos
  end
end
