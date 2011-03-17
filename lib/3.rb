val = 600851475143
#val = 13195
(val/2).downto(1) do |n|
	next if val%n != 0
	prime = 1
	(2..n/2).each do |f| 
		if n%f == 0
			prime = 0
			break
		end
	end
	if prime == 1
		puts n
		break
	end
end