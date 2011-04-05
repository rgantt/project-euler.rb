# what is the sum of the digits of the numer 2^1000?
val = (2**1000).to_s
puts (0..val.length).inject{ |s,i| s + val[i-1,1].to_i }