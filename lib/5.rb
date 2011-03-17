def sed( first, last )
    n = last
    while n += 1
        flag = 1
        last.downto( first ) do |i|
            flag = nil if n % i != 0
            break if n%i != 0
        end
        return n if flag == 1
    end
end
puts sed( 1, 20 )