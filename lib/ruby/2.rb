# find the sum of the even-valued terms of the fibonacci sequence below four million
require 'common/difference'

n, total = 1, 0;
while f = Math.fib( n ) and f < 4000000
	total += f if f%2 == 0
	n += 1
end
puts total