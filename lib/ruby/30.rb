# find the sum of all numbers that can be written as the sum of the fifth powers of their digits

n = 2
while true
	break if n.to_s.chars.to_a.inject(0){ |s,n| s + n.to_i**4 } == n
	n += 1
end
puts n