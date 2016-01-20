class Pino
  include Enumerable # Sisällytä moduuli

  def initialize()
    @stack = []
  end

  def push(x)
    @stack.push(x)
  end

  def pop()
    if @stack.empty?
      raise RuntimeError # throw new Exception()
    else
      @stack.pop
    end
  end

  # Undefined each for Pino, koska Enumerable
  def each(&block)
    @stack.each(&block)
  end
end
