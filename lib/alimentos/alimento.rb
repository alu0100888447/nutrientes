# encoding: utf-8
# Author::    Imar Abreu Diaz
# Copyright:: Cretive Commons
# License::   Distributes under the same terms as Ruby

# Esta clase permite representar un alimento junto con su cantidad de proteinas,
# glucidos y lipidos.
# Se han incluido el mixin Comparable.
class Alimento
  include Comparable
  attr_reader :nombre, :proteinas, :glucidos, :lipidos

  # Se asigna un nombre junto a la cantidad de proteinas, glucidos y lipidos.
  def initialize (nombre, proteinas, glucidos, lipidos)
    @nombre = nombre
    @proteinas = proteinas
    @glucidos = glucidos
    @lipidos = lipidos
  end

  # Devuelve el valor nutricional de un alimento.
  def valorNutricional
    valor = (@proteinas * 4) + (@glucidos * 4) + (@lipidos * 9)
  end

  # Formateo de salida.
  def to_s
    alimento =  "#{@nombre} | #{@proteinas} | #{@glucidos} | #{lipidos}"
  end

  # Restrictivo (con herencia - usa is_a?)
  # Por lo que se podria comparar con GAlimento.
  # Ademas de poderse con Alimento.
  def ==(objeto)
    if objeto.is_a?Alimento
      valorNutricional == objeto.valorNutricional
    else
      false
    end
  end

  # Restrictivo (con herencia - usa is_a?)
  # Por lo que se podria comparar con GAlimento.
  # Ademas de poderse con Alimento.
  def <=>(objeto)
    return nil unless objeto.is_a?Alimento
    if valorNutricional == objeto.valorNutricional
      return 0
    else
      if valorNutricional < objeto.valorNutricional
        return -1
      else
        return 1
      end
    end
  end
end

# Esta clase permite representar un grupo de alimento junto con su cantidad de
# proteinas, glucidos y lipidos.
# Esta clase GAlimento es una clase hija de la clase Alimento.
class GAlimento < Alimento
  attr_reader :nombreG

  # Se asigna un nombre de grupo, junto a el nombre del alimento y la cantidad
  # de proteinas, glucidos y lipidos.
  def initialize (nombreG, nombreA, proteinas, glucidos, lipidos)
    super(nombreA, proteinas, glucidos, lipidos)
    @nombreG = nombreG
  end
end
