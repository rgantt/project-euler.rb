require "prime"

module Math
	class << self
		# all factors of an integer n
		def factors(n)
			factors = []
			(1..n/2).each do |i|
				factors << i if n%i == 0
			end
			factors << n
			factors
		end
		
		def proper_factors n
			return factors(n) - [n]
		end
		
		def count_factors(n)
			factors = 3
			top = Math.sqrt(n).ceil
			(1..top).each do |i|
				factors += 1 if n%i == 0
			end
			factors
		end
		
		def recompose( prime_factors, n )
			factors = [1]
			prime_factors.each do |p|
				(1..Math.sqrt(n)).each do |k|
					break if n % p[0]**k != 0
					factors << p[0]**k
					factors << ( n / p[0]**k )
				end
			end
			(factors + [n]).uniq.sort
		end

		def combinations( n, k )
			return fact(n)/(fact(n-k)*fact(k))
		end
		
		# the sum of the divisors of an integer n, excluding n
		def d(n)
			factors(n).inject(:+)-n
		end
		
		# find the smallest number that divides every number between first and last
		def sed( first, last )
			n = last
			while n += 1
				flag = 1
				last.downto( first ) do |i|
					flag = nil if n % i != 0
					break if n%i != 0
				end
				return n if flag == 1
			end
		end
		
		# return the factorial of integer n
		def fact(n)
			(1..n).reduce(1, :*)
		end
		
		# find the length of the collatz chain for integer n
		def collatz(n)
			len = 0
			while n > 1
				n = 3*n + 1 if n%2 != 0
				n = n/2 if n%2 == 0
				len += 1
			end
			return len
		end
		
		# greatest common divisor of a and b [equal to gcd(b,a%b)]
		def gcd( a, b )
			return (b*(a%b))/lcm(b,a%b)
		end
		
		# least common multiple of a and b
		def lcm( a, b )
			n = [a,b].max
			while true
				return n if ( n%a == 0 and n%b == 0 )
				n += 1
			end
		end
		
		# the multiplicative order of a modulo n is the smallest number k such that a^k == 1 (mod n)
		def ord( n, a )
			k = 0
			while true
				return k if a**k % n == 1
				k += 1
			end
		end
	end
end