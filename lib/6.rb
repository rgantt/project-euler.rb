sq = 1
sum = 0
(1..100).each do |n|
    sq += n**2
    sum += n
end
sum = sum**2
diff = sum - sq
puts diff