# What is the value of the first triangle number to have over five hundred divisors?
require 'common/math'
count, n, triangle = 500, 1, 0
while true
	triangle = n*(n+1)/2
	break if Math.factors( triangle ).length > count
	n += 1
end
puts triangle