# What is the value of the first triangle number to have over five hundred divisors?
require 'common/math'
count, n, triangle = 50, 1, 0
while true
	triangle = n*(n+1)/2
	if Math.factors( triangle ).length > count
		break
	end
	n += 1
end
puts triangle