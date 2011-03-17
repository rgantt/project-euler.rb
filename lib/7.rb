n = 2
primes = []

def prime?( n )
    (2..n/2).each do |i|
        if( n % i == 0 )
            return nil
        end
    end
    true
end

begin
    primes << n if prime? n
end while n += 1 and primes.length < 10001
puts primes.last
