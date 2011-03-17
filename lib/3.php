<?php
$val = 600851475143;

// got help with this one :C
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
echo largest_prime_factor( $val );