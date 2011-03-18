def fib( n )
	return n unless n > 2 
	return fib( n - 1 ) + fib( n - 2 )
end