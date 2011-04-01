# how many routes are there from top-left to bottom-right in a 20x20 grid?
@_grid = [[]] # filling out the grid for O(1) lookups!
def routes_to_zero( i, j )
	return @_grid[i][j] if (@_grid[i] and @_grid[i][j])
	return 1 if i == 0 or j == 0
	tot = 0
	0.upto(j){ |n| tot += routes_to_zero( i - 1, n ) }
	@_grid[i] = [] if !(@_grid[i])
	@_grid[i][j] = tot
	tot
end

puts routes_to_zero( 1, 1 ) # better be 2
puts routes_to_zero( 2, 2 ) # better be 6
puts routes_to_zero( 3, 3 ) # better be 20
puts routes_to_zero( 4, 4 ) # better be 70
puts routes_to_zero( 20, 20 ) # better be 137846528820