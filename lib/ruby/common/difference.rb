module Math
	@_cache = []
	class << self
		# now with caching! silly me
		def fib( n )
			return @_cache[n] if @_cache.at(n)
			if n <=	2 
				val = n
			else
				val = fib( n - 1 ) + fib( n - 2 )
			end
			@_cache[n] = val
			val
		end
	end
end