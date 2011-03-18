# find the sum of the digits in the number 100!
require 'common/number'

n, total = 100, 0

val = fact(n).to_s
(0..(val.length-1)).each do |i|
	puts val[i,1].to_i
	total += val[i,1].to_i
end
puts total