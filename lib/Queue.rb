class Queue
  def initialize
    @store = Array.new
  end

  def enqueue(element)
    @store << element
  end

  def dequeue
    raise ArgumentError.new("Hey it's empty!") if empty?
    first_elem = @store[0]
    @store.delete_at(0)
    first_elem
  end

  def front
    raise ArgumentError.new("Hey it's empty!") if empty?
    @store[0]
  end

  def size
    @store.length
  end

  def empty?
    @store.length == 0
  end

  def to_s
    @store.to_s
  end
end
