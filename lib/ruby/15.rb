# how many routes are there from top-left to bottom-right in a 20x20 grid?
@_grid = [[]] # filling out the grid for O(1) lookups!
def val( i, j )
	return @_grid[i][j] if (@_grid[i] and @_grid[i][j])
	return 1 if i == 0 and j == 0
	return 1 if i == 0
	tot = 0
	0.upto(j){ |n|
		tot += val( i - 1, n )
	}
	@_grid[i] = [] if !(@_grid[i])
	@_grid[i][j] = tot
	tot
end

puts val( 1, 1 ) # better be 2
puts val( 2, 2 ) # better be 6
puts val( 3, 3 ) # better be 20
puts val( 4, 4 ) # better be 70
puts val( 20, 20 ) # better be 137846528820