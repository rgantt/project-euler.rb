# find the integer n (for n < 1,000,000) that has
# the longest collatz chain
lim = 1000000

def collatz( n )
	len = 0
	while n > 1
		n = 3*n + 1 if n%2 != 0
		n = n/2 if n%2 == 0
		len += 1
	end
	return len
end

chains = []
lim.downto(3) do |n|
	chains << collatz(n)
end
val = chains.max
puts "length: #{val} for n = #{(lim-chains.index(val))}"