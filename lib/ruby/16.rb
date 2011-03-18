# what is the sum of the digits of the numer 2^1000?
val, total = (2**1000).to_s, 0
(0..(val.length-1)).each do |i|
	puts val[i,1].to_i
	total += val[i,1].to_i
end
puts total