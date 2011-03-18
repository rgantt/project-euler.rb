limit = 100
sq = 0
(1..limit).each do |n|
    sq += n**2
end
sum = (limit+1)*limit/2
puts sum**2 - sq