use strict;
use warnings;
use Log::Log4perl;

my $number=shift;

Log::Log4perl->easy_init($Log::Log4perl::DEBUG);
my $logger=Log::Log4perl->get_logger();

if( ! defined $number)
{
	$logger->warn(" Number is not defined \n");
}

my $len=length($number);
my $sum=0;

for ( my $i=0 ;$i<$len;$i++)
{
  my $number=substr($number,$i,1);
  $sum+=$number;

}

$logger->info(" sum is $sum\n");
