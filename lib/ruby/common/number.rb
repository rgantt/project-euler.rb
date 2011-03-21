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
		
		# the sum of the divisors of an integer n
		def d(n)
			divisors = 0
			(1..n/2).each do |i|
				divisors += i if n%i == 0
			end
			divisors
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
		(2..n-1).each {|i| n*= i}
		n
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
			a,b = b,a%b
			return (a*b)/lcm(a,b)
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