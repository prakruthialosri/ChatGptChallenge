use strict;
use warnings;
use Log::Log4perl;

Log::Log4perl->easy_init($Log::Log4perl::DEBUG);
my $logger=Log::Log4perl->get_logger();

my $number=5;

if ( ! defined $number)
{
	$logger->warn(" Number is not defined ");
}

my $factorial=1;

for ( my $i=$number ; $i>=1 ; $i--)
{
	$factorial=$factorial*$i ;


}

print " factorial of $number is  $factorial \n";
