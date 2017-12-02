#!/usr/bin/perl
use warnings;
use strict;
use 5.010;


my @mylist = 1..100;

#say @mylist;

my $x = shift @mylist;
my $y = pop @mylist;

say @mylist;

unshift @mylist, $x;
push @mylist, $y;

say @mylist;


