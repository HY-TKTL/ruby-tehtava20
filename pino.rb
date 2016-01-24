class Pino
	include Enumerable

	def initialize
		@stack = []
	end

	def push x
		@stack.insert 0, x
	end

	def pop
		raise RuntimeError unless first != nil
		@stack.delete first
	end

	def each
		if block_given?
			@stack.each {|entry| yield(entry)}
		end
	end

end