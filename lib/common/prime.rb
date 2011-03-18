def lpf( n )
	i = 2
	while i < n
		n = n/i if n % i == 0
		i += 1
	end
	n
end

def prime?( n )
    (2..n/2).each do |i|
        if( n % i == 0 )
            return nil
        end
    end
    true
end