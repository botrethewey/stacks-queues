class Stack
  def initialize
    @store = Array.new
  end

  def push(element)
    #@store.unshift(element)
    #now the last added element is pushed to first index.
    #later we dont have to worry about last in, first out
    #just use regular index
    @store << element
  end

  def pop
    raise ArgumentError.new("Hey it's empty!") if empty?
    #@store.pop
    last_elem = @store[-1]
    @store.delete_at(-1)
    last_elem
  end

  def top
    raise ArgumentError.new("Hey it's empty!") if empty?
    @store[-1]
  end

  def size
    @store.length
    # @store.last
  end

  def empty?
    #@store.length == 0
    #size == 0
    @store.empty?
  end

  def to_s
    return @store.to_s
  end
end
