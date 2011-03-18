# find the last ten digits of the series 1^1 + 2^2 + ... + 1000^1000
total = 0
1.upto(1000) do |n|
	total += n**n
end
puts total