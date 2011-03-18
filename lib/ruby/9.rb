max = 1000
(1..max).each do |i|
    (1..max).each do |j|
        (1..max).each do |k|
            if ( i**2 + j**2 ) == k**2
                puts i*j*k if ( i + j + k ) == max
            end
        end
    end
end
