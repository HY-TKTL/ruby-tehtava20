require './pino.rb'

p = Pino.new

p.push(2)
p.push(5)
puts p.pop
puts p.pop
puts p.pop