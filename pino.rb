
class Pino
  include Enumerable

  def initialize()
    @t = []
  end


  def pop()
    if @t.empty?
      raise "Pino on tyhjä"
    end
    @t.pop
  end

  def push(lisattava)
    @t << lisattava
  end


  # enumerablen vaatimat
  def each(&block)
    @t.each(&block)
  end

  def any?(&block)
    @t.any?(&block)
  end


end


p = Pino.new
p.push(4)
p.push(5)
puts p.pop
puts p.pop
