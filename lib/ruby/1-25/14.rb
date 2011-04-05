# find the integer n (for n < 1,000,000) that has
# the longest collatz chain
require 'common/math'

lim, chains = 1000000, []
lim.downto(3) do |n|
	chains << Math.collatz(n)
end
val = chains.max
puts "length: #{val} for n = #{(lim-chains.index(val))}"