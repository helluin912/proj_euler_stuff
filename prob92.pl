#!/usr/bin/perl
use warnings;
use strict;
use Time::HiRes 'time';
my $START_TIME = time;
my %hash;
#breaks a # into individual digits, squares them, & sums it up
sub sq_sum {
	my $sum = 0;
	for my $c (split (//, $_[0])){
		$sum += $c ** 2;
	}
	return $sum;
}

sub check {
	if ((exists $hash{$_[0]}) && ($hash{$_[0]} == 89)) {
		return 1;
	}
	if ((exists $hash{$_[0]}) && ($hash{$_[0]} == 1)) {
		return 0;
	}
	else {
		&check(&sq_sum($_[0]));
	}
}

#goes to 567 since that's the sum of squares in 9,999,999!
for (my $i = 1; $i <= 567; $i++){
	$hash{$i} = &sq_sum($i);
}
$hash{89} = 89;


my $counter = 0;
for (my $num = 2; $num < 10000000; $num++){
	my $temp_sum = &sq_sum($num);
	my $tcount = $counter;
 	$counter = $counter + &check($temp_sum);
	if ($tcount == $counter) {
	#counter didn't change, ergo it was a 1
		$hash{$num} = 1;
		$hash{$temp_sum} = 1;
	}
	else {
		$hash{$num} = 89;
		$hash{$temp_sum} = 89;
	}
}

print "counter is $counter\n";
print "elapsed time: ", time - $START_TIME, "\n";
