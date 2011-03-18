# find the difference between the square of the sums and 
# the sum of the squares for the first 100 integers

limit, sq = 100, 0
(1..limit).each do |n|
    sq += n**2
end
puts ((limit+1)*limit/2)**2 - sq