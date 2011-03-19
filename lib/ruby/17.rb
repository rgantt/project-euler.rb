# how many letters are be needed to write all 
# the numbers in the words from 1 to 1000?

ones = %w[ one two three four five six seven eight nine ]
tweens = %w[ eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen ]
tens = %w[ ten twenty thirty forty fifty sixty seventy eighty ninety ]
hundreds = ones.collect{ |n| n = "#{n}hundred" }
thousands = ones.collect{ |n| n = "#{n}thousand" }

total = 0
(1..1000).each do |n|
	str = ""
	str += "#{thousands[(n%10000)/1000-1]}" if (n%10000)/1000-1 >= 0
	str += "#{hundreds[(n%1000)/100-1]}" if (n%1000)/100-1 >= 0
	str += "and" if (n%100) != 0 and n > 100
	str += "#{tens[(n%100)/10-1]}" if (n%100)/10-1 >= 0 and ( n>=20 or n%10==0 ) and (n%100)/10 - 1 != 0
	if (n%10)/1-1 >= 0
		str += "#{tweens[(n%10)/1-1]}" if (n%10>0 and n%10<10) and (n%100)/10 - 1 == 0
		str += "#{ones[(n%10)/1-1]}" if (n<10 or n>20) and (n%100)/10 - 1 != 0
	end
	total += str.length
	puts str
end
puts total