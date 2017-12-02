#!/usr/bin/perl
print "student info";
$studentinfo = <STDIN>;
@student_info = split(/ /, $studentinfo);
print "$student_info[1]";

