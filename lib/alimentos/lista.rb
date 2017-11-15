Node = Struct.new(:valor, :next, :prev)

class Lista
  include Enumerable
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

end
