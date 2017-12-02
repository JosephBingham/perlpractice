#!/usr/bin/perl

@food =("");
$food[0] = "2-Piece Chickens";
$food[1] = "Kentuck Nuggets (6 Pieces)";
$food[2] = "Deli Burger";

@drink = ("Pepsi", "Ice Lemon Tea", "Orange Juice");

print "\n$food[2]";

$f_price = "4.59 3.99 2.00";
@food_price = split(/ /, $f_price);

print "\n$food_price[1]\n";

