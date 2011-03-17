val = 600851475143
#val = 13195

# i found help for this one :C
def lpf( n )
	i = 2
	while i < n
		n = n/i if n % i == 0
		i += 1
	end
	n
end
puts lpf( val )