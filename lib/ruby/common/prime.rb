require File.dirname(__FILE__)+'/number'

module Math
	module Prime
		class << self
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
				(5..Math.sqrt(n).ceil).step(6) do |i|
					if n % i == 0 or n % ( i + 2 ) == 0
						return nil
					end
				end
				true
			end

			# euler's totient function returns the number of coprimes to an integer n
			def tot( n )
				coprimes = 1
				(2..(n-1)).each do |i|
					coprimes += 1 if Math.gcd( i, n ) == 1
				end
				coprimes
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
		end
	end
end