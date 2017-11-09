Node = Struct.new(:valor, :next, :prev)

class Lista
  attr_reader :head, :tail, :size

  def initialize()
    @head = Node.new(nil, nil, nil)
    @tail = Node.new(nil, nil, nil)
    @size = 0
  end

end
