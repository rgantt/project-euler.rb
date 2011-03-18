<?php
function largest_prime_factor( $n )
{
	$i = 2;
	while( $i < $n )
	{
		if( $n % $i == 0 )
			$n = $n/$i;
		$i++;
	}
	return $n;
}