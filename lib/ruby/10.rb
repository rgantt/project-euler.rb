#calculate the sum of all primes below 2 million
require 'common/prime'
cap, composites = 2000000, 0
primes = Prime.euler_sieve( (2..Math.sqrt(cap).ceil).to_a )
(1..cap).each do |n|
	composite = nil
	primes.each do |p|
		composite = 1 if n%p == 0 and n != p
	end
	composites += n if composite
end
puts cap*(cap+1)/2 - (composites+1)