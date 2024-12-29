use strict;
use warnings;
use Log::Log4perl;

my $string=shift;

Log::Log4perl->easy_init($Log::Log4perl::DEBUG);
my $logger=Log::Log4perl->get_logger();

if ( ! defined $string)
{
	$logger->warn("string is not defined ,please ass the string \n");
}


my %letter=();
my $len=length($string);

for ( my $i=0; $i<$len; $i++ )
{
 my  $char=substr($string,$i,1);	
  $letter{$char}++;
  #  print " char is : $char and $letter{$char} \n";

}

for my $key ( sort keys %letter )
{
	print "$key : $letter{$key} \n";
}



