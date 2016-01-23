class Pino
  include Enumerable

  def initialize
    @pino = []
  end

  def each(&block)
    @pino.each(&block)
  end

  def push x
    @pino.push x
  end

  def pop
    if @pino.empty?
      raise "Pino on tyhjä => et saa mitään!"
    else
      @pino.pop
    end
  end
end