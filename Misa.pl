#!/usr/bin/perl
use strict;
use warnings;
use 5.010;

print "a: \n";
my $a = <STDIN>;
print "b: \n";
my $b = <STDIN>;
print "c: \n";
my $c = <STDIN>;
my $t = 0;

sub ncr{
	my( $n, $r ) = @_;
    return unless defined $n && $n =~ /^\d+$/ && defined $r && $r =~ /^\d+$/;
    my $product = 1;
    while( $r > 0 ) {
        $product *= $n--;
        $product /= $r--;
    }
    return $product;
}
sub factorial {
  my ($n) = @_;
  return 1 if $n == 0;
  return factorial($n-1) * $n;
}

for( my $i = 0; $i<=$b; $i++){
	for( my $j = 0; $j<=$a; $j++){
 		my $d = &ncr($a,$j) * &ncr($b,$i) * &factorial($i + $j) * ($b + $c -1) * factorial($a + 2*$b +$c - $i - $j - 1);
	my $n = factorial($a + (2.0)*$b + $c);
	$t += $d/$n;

}
} 
print "answer: ";
say $t;
