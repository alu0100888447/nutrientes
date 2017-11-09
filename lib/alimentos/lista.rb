Node = Struct.new(:valor, :next, :prev)

class Lista
  attr_reader :head, :tail, :size

  def initialize()
    @head = Node.new(nil, nil, nil)
    @tail = Node.new(nil, nil, nil)
    @size = 0
  end

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

end
