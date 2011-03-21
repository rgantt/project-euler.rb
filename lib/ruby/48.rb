# find the last ten digits of the series 1^1 + 2^2 + ... + 1000^1000
puts (1..1000).inject{|s,n| s+n**n }.to_s[-10,10]