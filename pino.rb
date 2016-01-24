class Pino

  include Enumerable

  def initialize
    @ar = []
  end

  def push(x)
    @ar << x
  end

  def pop()
    raise RuntimeError if @ar.empty?
    @ar.pop()
  end

  def each
    if block_given?
      @ar.each do |block|
        yield(block)
      end
    end
  end

end