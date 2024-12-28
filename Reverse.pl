#Write a Perl program to reverse a given string.
#
use strict;
use warnings;
use Log::Log4perl;

my $string=shift;

Log::Log4perl->easy_init($Log::Log4perl::DEBUG);
my $logger = Log::Log4perl->get_logger();
$logger->info("Program to reverse the string started\n");

if (! defined $string)
{
	$logger->warn("string is not defined");

}


my $len=length($string);
my $rev_string;

for (my $i=$len-1 ; $i>=0 ; $i--)
{
	$rev_string.=substr($string,$i,1);
}

print "Reverse string is $rev_string\n";
