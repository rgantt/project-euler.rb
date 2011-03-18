# returns the largest prime factor for n
def lpf( n )
	i = 2
	while i < n
		n = n/i if n % i == 0
		i += 1
	end
	n
end

# returns true if n is prime, nil otherwise
def prime?( n )
	return nil if n == 1
	return true if n < 4
	return nil if n % 2 == 0
	return true if n < 9
	return nil if n % 3 == 0
	(5..Math.sqrt(n).floor).step(6) do |i|
		if n % i == 0 or n % ( i + 2 ) == 0
			return nil
		end
	end
	true
end

# given a list, returns all primes
def euler_sieve( list )
	prime = []
	while list != [] do
		new = list.map { |i| list[0] * i }
		sub = list - new
		prime << sub.shift
		list = sub
	end
	prime
end