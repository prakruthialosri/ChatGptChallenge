use strict;
use warnings;
use Log::Log4perl;

Log::Log4perl->easy_init($Log::Log4perl::DEBUG);
my $logger=Log::Log4perl->get_logger();

my @number;


 if ( scalar @number ==0 )
 {
	 $logger->warn("Array is empty");
 }


@number=(1,2,200,19,100,10);
my $min=$number[0];
my $max=$number[0];

for my $num (@number)
{
	if ($num < $min)
	{
	  $min=$num;
        }
	if ($num > $max)
	{
             $max=$num;
	}


}

print "min is $min max is $max\n";


