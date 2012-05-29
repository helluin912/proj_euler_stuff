#!/usr/bin/perl
use warnings;

sub findval
{
	$nval = 0;
	foreach $l (@temp){
		if ($l =~/A/) {$nval = $nval + 1;}
		if ($l =~/B/) {$nval = $nval + 2;}
		if ($l =~/C/) {$nval = $nval + 3;}
		if ($l =~/D/) {$nval = $nval + 4;}
		if ($l =~/E/) {$nval = $nval + 5;}
		if ($l =~/F/) {$nval = $nval + 6;}
		if ($l =~/G/) {$nval = $nval + 7;}
		if ($l =~/H/) {$nval = $nval + 8;}
		if ($l =~/I/) {$nval = $nval + 9;}
		if ($l =~/J/) {$nval = $nval + 10;}
		if ($l =~/K/) {$nval = $nval + 11;}
		if ($l =~/L/) {$nval = $nval + 12;}
		if ($l =~/M/) {$nval = $nval + 13;}
		if ($l =~/N/) {$nval = $nval + 14;}
		if ($l =~/O/) {$nval = $nval + 15;}
		if ($l =~/P/) {$nval = $nval + 16;}
		if ($l =~/Q/) {$nval = $nval + 17;}
		if ($l =~/R/) {$nval = $nval + 18;}
		if ($l =~/S/) {$nval = $nval + 19;}
		if ($l =~/T/) {$nval = $nval + 20;}
		if ($l =~/U/) {$nval = $nval + 21;}
		if ($l =~/V/) {$nval = $nval + 22;}
		if ($l =~/W/) {$nval = $nval + 23;}
		if ($l =~/X/) {$nval = $nval + 24;}
		if ($l =~/Y/) {$nval = $nval + 25;}
		if ($l =~/Z/) {$nval = $nval + 26;}
	}
	return $nval;
}

open (DATA, "names.txt") or die $!;
$sum = 0;
while (<DATA>){
	@names = split(/\W+/, $_);
	@names = sort(@names);
	for ($i = 0; $i <= $#names; $i++){
		our @temp = split(//, $names[$i]);
		$value = &findval(@temp);
		$sum = $sum + ($i * $value);
		@temp = ();
	}
}
print "sum is $sum \n";
close (DATA);
