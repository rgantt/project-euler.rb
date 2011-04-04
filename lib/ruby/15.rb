# how many routes are there from top-left to bottom-right in a 20x20 grid?
require File.dirname(__FILE__)+"/common/math"

def routes_to_zero( i, j )
	return Math.combinations( i+j, [i,j].max )
end

puts routes_to_zero( 20, 20 ) # better be 137846528820