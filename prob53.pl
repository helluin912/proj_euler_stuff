#!/usr/bin/perl
use warnings;
use strict;
use POSIX qw/floor/;

sub factorial
{
	my $product = 1;
	my $test = $_[0];
	if ($test == 0){$test = 1;}
	for (my $i = 1; $i <= $test; $i++){
		$product = $product * $i;
	}
	return $product;
}

my @facts;
for (my $x = 0; $x <= 100; $x++){
	$facts[$x] = &factorial($x);
}

my $count = 0;
for (my $n = 23; $n <= 100; $n++){
	my $mid = floor($n);
	for (my $r = 2; $r <= $mid; $r++){
		my $nCr = ($facts[$n]) / ($facts[$r] * $facts[$n - $r]);
		if ($nCr > 1000000) {
			$count++;
		}
	}
}

print "count is $count\n";
