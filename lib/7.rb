require 'common/prime'

n = 2
primes = []

begin
    primes << n if prime? n
end while n += 1 and primes.length < 10001
puts primes.last
