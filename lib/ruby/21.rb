# evaluate the sum of all the amicable numbers under 10000.
bound = 7000

def d(n)
	divisors = 0
	(1..n/2).each do |i|
		divisors += i if n%i == 0
	end
	divisors
end

sf = [0]
(1..bound).each do |n|
	sf << d(n)
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