use strict;
use warnings;
use Log::Log4perl;

Log::Log4perl->easy_init($Log::Log4perl::DEBUG);
my $logger=Log::Log4perl->get_logger();

my @array=(1,14,23,98);

my @sort_array=sort{$a <=> $b }@array;
my $len=scalar @array;

print " second highest is $sort_array[$len-2]  : @sort_array \n";

