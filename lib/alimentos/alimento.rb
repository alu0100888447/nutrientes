class Alimento
  attr_reader :nombre, :proteinas, :glucidos
  def initialize (nombre, proteinas, glucidos, lipidos)
    @nombre = nombre
    @proteinas = proteinas
    @glucidos = glucidos
    @lipidos = lipidos
  end
end
