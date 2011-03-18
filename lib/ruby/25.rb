# what is the firm term in the fibonacci sequence to contain 1000 digits?
require 'common/difference'

digits, f, n = 1000, 0, 1
while f.to_s.length < digits
	f = fib n
	n += 1
end
puts n