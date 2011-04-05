# find the sum of all numbers which are equal to the sum of the factorial of their digits.
require File.dirname(__FILE__)+"/common/math"

n, set = 3, []
while ( n += 1 ) < 100000 # don't really know how to clamp down the upper bound here
	val = "0"+n.to_s
	set << n if (0..val.length-1).inject{ |s,i| s + Math.fact( val[i,1].to_i ) } == n
end
puts set.inject(:+)