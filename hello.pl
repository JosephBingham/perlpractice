#! /usr/bin/perl

print "Perl script welcoming the users. \n\n";

&welcome_user;

sub welcome_user {
	print "Your name please: ";
	$name = <STDIN>;
	chop($name);

	print "\nHello $name, welcome to Perl world. \n\n";
}
