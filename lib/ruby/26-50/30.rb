# find the sum of all numbers that can be written as the sum of the fifth powers of their digits
n, nums, lim = 1, [], 5*(9**5) # this is the worst upper bound ever
while ( n += 1 ) < lim
	nums << n if n.to_s.chars.to_a.inject(0){ |s,n| s + n.to_i**5 } == n
end
puts nums.inject(:+).to_s