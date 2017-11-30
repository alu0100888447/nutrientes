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

  # Realiza el calculo del indice glucemico de un alimento.
  def i_glucemico (alimento, glucosa)
    si = [], []
    gl = [], []
    aibc = []
    aibcg = []
    igind = []
    alimento.each_with_index do | val, index |
      alimento[index].each_with_index do | val, index1 |
        if index1 > 0
            si[index] << (((alimento[index][index1] - alimento[index][0]) + (alimento[index][index1 - 1] - alimento[index][0])) * 5)/2
            gl[index] << (((glucosa[index][index1] - glucosa[index][0]) + (glucosa[index][index1 - 1] - glucosa[index][0])) * 5)/2
        end
      end
      aibc << si[index].reduce(:+)
      aibcg << gl[index].reduce(:+)
    end
    aibc.each_with_index do | val, index |
      igind << (aibc[index]/aibcg[index]) * 100
    end
    ig = igind.reduce(:+)/2
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

class Array
  def ordenarFor
    for i in 1..self.length - 1
      for j in (self.length - 1).downto(i)
        if (self[j] <=> self[j - 1]) == -1
          x = self[j - 1]
          self[j - 1] = self[j]
          self[j] = x
        end
      end
    end
    self
  end

  def ordenarEach
    (0..self.length - 2).each do |i|
      min = i
      (i + 1..self.length - 1).each do |j|
        if (self[j] <=> self[min]) == -1
          min = j
        end
      end
      x = self[min]
      self[min] = self[i]
      self[i] = x
    end
    self
  end
end
