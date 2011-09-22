# find the sum of all the positive integers which cannot be written as the sum of two abundant numbers
require File.dirname(__FILE__)+"/../common/math"

# the efficiency of this algorithm is acceptable
def abundants_less_than( n )
	abundants = []
	(12..n).each do |i|
		abundants << i if Math.proper_factors(i).inject(:+) > i
	end
	abundants
end
max = 20161
ab = abundants_less_than max
ans = []
ab.each do |a|
	ab.each do |b|
		n = a + b
		break if n > max
		ans << n
	end
end
puts ((1..max).to_a - ans).inject(:+)