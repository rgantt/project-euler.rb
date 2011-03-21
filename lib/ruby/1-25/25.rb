# what is the first term in the fibonacci sequence to contain 1000 digits?
require 'common/difference'

digits, f, n = 1000, nil, 0
while f.to_s.length < digits
	f = Math.fib n
	n += 1
end
puts n