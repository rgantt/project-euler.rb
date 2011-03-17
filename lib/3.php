<?php
//$val = 600851475143;
$val = 13195

for( $n = ( $val / 2 ); $n > 0; $n-- )
{
	if( $val % n != ) continue;
	$prime = 1;
	for( $f = 2; $f <= ( $n / 2 ); $f++ )
	{
		if( $n % $f == 0 )
		{
			$prime = 0;
			break;
		}
	}
	if( $prime == 1 )
	{
		echo $n;
		break;
	}
}