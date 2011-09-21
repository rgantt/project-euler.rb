# find the sum of all multiples of 3 or 5 below 1000
puts (0..999).to_a.inject{ |sum, x| ( x%3 == 0 or x%5 == 0 ) ? ( sum + x ) : sum }