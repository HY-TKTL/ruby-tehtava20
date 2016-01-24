class Pino
  include Enumerable

  def initialize(*members)
    @members = members
  end

  def push(x)
    @members.push x
  end

  def pop
    if @members.empty?
      raise RuntimeError
    end
    @members.pop
  end

  def each(&block)
    @members.each(&block)
  end
end