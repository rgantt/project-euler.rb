# find the smallest number that divides every number between first and last
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

# return the factorial of integer n
def fact(n)
   (2..n-1).each {|i| n*= i}
   n
end

# find the length of the collatz chain for integer n
def collatz(n)
	len = 0
	while n > 1
		n = 3*n + 1 if n%2 != 0
		n = n/2 if n%2 == 0
		len += 1
	end
	return len
end