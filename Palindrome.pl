use strict;
use warnings;

my $string="MOMI";
my $rev="";
my $len=length($string);

for ( my $i=$len-1 ; $i >=0 ; $i--)
{
	$rev.=substr($string,$i,1);
}

 if ( $rev eq $string )
 {
	 print "string  $string is palindrome \n";
 }
 else
 {
	 print " string $string  not palindrome\n";
 }
