#!/usr/bin/perl


print "password?\n";

$response = <STDIN>;
chomp($response);
$wanted = "dis dik";
if($response eq $wanted){

print "awwww yeah, welcome\n";

}else{

print "na main, u want da dik\n";

}
