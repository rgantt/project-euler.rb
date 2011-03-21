# find the sum of the digits in the number (100!)
require 'common/math'

val = Math.fact(100).to_s
puts (0..val.length-1).inject{|s,i| s+val[i-1,1].to_i }