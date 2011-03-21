# evaluate the sum of all the amicable numbers under 10000.
require 'common/number'

bound = 7000

sf = [0]
(1..bound).each do |n|
	sf << Math.d(n)
end

# a and b are amicable if d(b) = a and d(a) = b and a != b
amicable = []
(1..bound).each do |i|
	(i..bound).each do |j|
		next if i == j
		amicable << [ i, j ] and puts "#{i}, #{j}" if ( i == sf[j] and j == sf[i] )
	end
end
total = 0
amicable.collect{ |a| total += (a.first + a.last) }
puts total
#puts nums