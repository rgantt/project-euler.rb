def fib( n )
	return n unless n > 2 
	return fib( n - 1 ) + fib( n - 2 )
end
n, total = 1, 0;
while f = fib( n ) and f < 4000000
	total += f if f%2 == 0
	n += 1
end
puts total