# encoding: utf-8
# Author::    Imar Abreu Diaz
# Copyright:: Cretive Commons
# License::   Distributes under the same terms as Ruby

Node = Struct.new(:valor, :next, :prev)

# Esta clase permite representar una lista doblemente enlazada.
# Se han incluido el mixin Enumerable.
class Lista
  include Enumerable
  attr_reader :head, :tail, :size

  # Se inicializa la lista vacia.
  def initialize()
    @head = Node.new(nil, nil, nil)
    @tail = Node.new(nil, nil, nil)
    @size = 0
  end

  # Introduce un objeto en la lista por el head.
  def push (valor)
    if (@size == 0)
      nodo = Node.new(valor, nil, nil)
      @tail = nodo
    elsif @size == 1
      nodo = Node.new(valor, nil, @tail)
      @tail.next = nodo
    else
      nodo = Node.new(valor, nil, @head)
      @head.next = nodo
    end
    @head = nodo
    @size += 1
  end

  # Saca un objeto de la lista por el head.
  def pop_head ()
    aux = @head
    @head = @head.prev
    if @head != nil
      @head.next = nil
    else
      @tail = nil
    end
    aux.valor
  end

  # Saca un objeto de la lista por el tail.
  def pop_tail ()
    aux = @tail
    @tail = @tail.next
    if @tail != nil
      @tail.prev = nil
    else
      @head = nil
    end
    aux.valor
  end

  # Formateo de salida.
  def to_s
    i = 0
    nodo = Node.new(nil,nil,nil)
    nodo = @tail
    while i != @size
      puts "#{nodo.value}"
      if nodo.next.next == nil
        puts "#{nodo.next.value}"
        i = @size
      else
        nodo = nodo.next
      end
    end
  end

  # Se incluye el metodo del mixin Enumerable
  # Se define como una iteración sobre los valores de la lista.
  def each
    i = @tail
    while i != nil
      yield i.valor
      i = i.next
    end
  end

end
