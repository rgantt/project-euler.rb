# Find the pythagorean triplet for which a + b + c = 1000

max = 1000
(1..max).each do |i|
    (i..(max-i)).each do |j|
		c = max - i - j
		if ( i**2 + j**2 ) == c**2
			puts i, j, c, i*j*c
        end
    end
end