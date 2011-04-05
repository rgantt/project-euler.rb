# find the sum of all the positive integers which cannot be written as the sum of two abundant numbers
# lower limit 1
# upper limit 28123
# find all abundant numbers below 28123, add all combinations of them, then remove this total from 28123(28123+1)/2
require File.dirname(__FILE__)+"/../common/math"

def abundant_up_to( n )
	# abundant number: a number for which the sum of its proper divisors exceeds it
	abundants = []
	(12..n).each do |i|
		abundants << i if Math.proper_factors(i).inject(:+) > i
	end
	abundants
end

as = abundant_up_to(28123/12)
puts (28123*(28124)/2) - as.product(as).inject(:+).inject(:+)