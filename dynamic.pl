#!/usr/bin/perl
use warnings;
use strict;
use CGI ':standard';

print header;

print start_html(-title=>'Time'), h1('Time'), p(scalar localtime), end_html;
---
use CGI 'header';

$dir = '/var/www/html/images';
opendir PICS, $dir or die $!;

my @pics = grep { -f "$dir/$_" } readdir PICS;

my $a_pic = $pics[rand @pics];

if($a_pic =~ /\.png$/){
	print header(-type => 'image/png');
} else {
	print header(-type => 'image/jpeg');
}

open PIC, "$dir/$a_pic" or die $!;
print while <PIC>;
---
use CGI ':standard';
my $name = param('name');
my $sex = param('sex');
print header, start_html(-title=>"hello $name"), 
		h1("hello $name"), 
		p("hello $name, you are $sex"), end_html

---
my @params = param;
foreach my $param (@params){
	print p('Param ', b($param), ' is ', i(param($param)));
}
