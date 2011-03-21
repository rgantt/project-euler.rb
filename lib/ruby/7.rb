#find the 10,001st prime number
require 'common/prime'

n = 1
primes = []
begin
    primes << n if Math::prime.prime? n
end while n += 1 and primes.length < 10001
puts primes.last