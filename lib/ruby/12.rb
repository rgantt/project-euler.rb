# what is the value of the first triangle number to have over five hundred divisors?
require File.dirname(__FILE__)+"/common/math"

count, n, t = 500, -1, 0
while t+=(n+=1)+1
	break if Prime.prime_division( t, Prime::EratosthenesGenerator.new ).inject(1){|c,p| c*(p[1]+1) } > count
end
puts triangle