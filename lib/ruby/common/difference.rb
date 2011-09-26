module Math
	@memo = []
	class << self
	# now with memoization!
	def fib( n )
		return @memo[n] if @memo.at(n)
		if n <=	2 
			val = n
		else
			val = fib( n - 1 ) + fib( n - 2 )
		end
		@memo[n] = val
		val
	end
	end
end